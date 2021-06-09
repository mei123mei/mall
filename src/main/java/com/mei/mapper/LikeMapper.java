package com.mei.mapper;



import com.mei.pojo.Business;
import com.mei.pojo.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository
public interface LikeMapper {

    @Insert("insert into mall.like values(null,#{itemid},#{commentid},#{likes})")
    int saveLikes(String itemid,String commentid,Long likes);

}
