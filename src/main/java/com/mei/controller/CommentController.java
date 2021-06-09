package com.mei.controller;

import com.mei.cache.RedisCache;
import com.mei.mapper.CommentMapper;
import com.mei.pojo.Collect;
import com.mei.pojo.Comment;
import com.mei.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
public class CommentController {
    @Autowired
    CommentService commentService;



    @RequestMapping("/savecomment")
    @ResponseBody
    public String savecomment(int itemid,String time,String txt,String username,String pic){
        int i = commentService.saveComment(new Comment(itemid, time, txt,username,pic));
//        int id = commentService.returnId();
//        Integer defaultvalue =0;
////        System.out.println(id);
//        RedisCache.setCommentsZero(itemid+"",id+"",defaultvalue);

        return "ok";
    }

    @RequestMapping("/loadcomment")
    @ResponseBody
    public Object loadcomment(int itemid,String username){
        List<Comment> comments = commentService.queryCommentListByItemId(itemid);

        if(comments!=null) {
            for (Comment comment : comments) {
                String s = RedisCache.showLikeStatus(username, comment.getId() + "");
                if(s==null){
                    s="0";
                    comment.setStatus("0");
                }
                if (s.equals("1")) {
                    comment.setStatus("1");
                }
                Long n= (Long) RedisCache.setCommentsIncr(itemid + "", comment.getId() + "", 0);

                comment.setLikes(n);
            }
        }

        return comments;
    }


    @RequestMapping("/addlike")
    @ResponseBody
    public Object addlike(String username,int itemid,int commentid){

        Long likes= (Long) RedisCache.setCommentsIncr(itemid + "", commentid + "",1);
      RedisCache.saveLikeStatus(username,commentid+"","1");
        return likes;
    }



    @RequestMapping("/decrlike")
    @ResponseBody
    public Object decrlike(int itemid,int commentid,String username){

        Long likes= (Long) RedisCache.setCommentsIncr(itemid + "", commentid + "",-1);
        RedisCache.removeLikeStatus(username, commentid + "");
        return likes;
    }

//    @RequestMapping("/loadlikes")
//    @ResponseBody
//    public String loadcollect(Integer commentid){
//        System.out.println(commentid);
//        Comment comment = commentService.queryIsLike(commentid);
//        if(comment!=null){
//            return "true";
//        }
//
//        return "false";
//    }
}
