package com.mei.service;

import com.mei.pojo.Comment;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CommentService {
    int saveComment(Comment comment);

    List<Comment> queryCommentListByItemId(int itemid);

    int returnId();

    Comment queryIsLike(Integer id);

    List<Comment> queryCommentList();
}
