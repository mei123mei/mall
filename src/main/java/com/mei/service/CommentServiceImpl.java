package com.mei.service;

import com.mei.mapper.CommentMapper;
import com.mei.pojo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    CommentMapper commentMapper;

    @Override
    public int saveComment(Comment comment) {
        int i = commentMapper.saveComment(comment);
        return i;
    }

    @Override
    public List<Comment> queryCommentListByItemId(int itemid) {
        List<Comment> comments = commentMapper.queryCommentListByItemId(itemid);
        return comments;
    }

    @Override
    public int returnId() {
        int i = commentMapper.returnId();
        return i;
    }

    @Override
    public Comment queryIsLike(Integer id) {
        Comment comment = commentMapper.queryIsLike(id);
        return  comment;
    }

    @Override
    public List<Comment> queryCommentList() {
        List<Comment> commentList = commentMapper.queryCommentList();
        return commentList;
    }
}
