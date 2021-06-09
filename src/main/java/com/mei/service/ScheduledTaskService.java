package com.mei.service;

import com.mei.cache.RedisCache;
import com.mei.mapper.CommentMapper;
import com.mei.mapper.LikeMapper;
import com.mei.pojo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScheduledTaskService {

    @Autowired
    LikeMapper likeMapper;

    @Autowired
    CommentMapper commentMapper;

//    commentid 23有问题
   @Scheduled(cron = "0 0/1 * * * ?")
    public void saveLikes(){
        List<Comment> comments = commentMapper.queryCommentList();
        for (Comment comment : comments) {
            Long likes = (Long) RedisCache.setCommentsIncr(comment.getItemid()+"", comment.getId()+"", 0);

            int i1 = commentMapper.updateLikes(comment.getId(), likes);

//            int i = likeMapper.saveLikes(comment.getItemid() + "", comment.getId() + "", likes);
        }


    }


}
