package com.mei.mapper;



import com.mei.pojo.Business;
import com.mei.pojo.Comment;
import com.mei.pojo.Tag;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository
public interface RecommendMapper {


    @Select("select firststatus from mall.recommend where username=#{username}")
  int status(String username);

}
