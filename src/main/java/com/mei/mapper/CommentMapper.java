package com.mei.mapper;


import com.mei.pojo.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CommentMapper {

    @Insert("insert into mall.comment values(null,#{itemid},#{time},#{info},#{username},#{pic},0,0)")
    int saveComment(Comment comment);

    @Select("select * from mall.comment where itemid=#{itemid}")
    List<Comment> queryCommentListByItemId(int itemid);

    @Select("SELECT LAST_INSERT_ID()")
    int returnId();

    @Select("select * from mall.comment")
    List<Comment> queryCommentList();

    @Update("update mall.comment set likes=#{likes} where id=#{id}")
    int updateLikes(int id,Long likes);

    @Select("select * from mall.comment where id=#{id}")
    Comment queryIsLike(Integer id);

}
