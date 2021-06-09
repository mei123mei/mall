package com.mei.mapper;



import com.mei.pojo.Business;
import com.mei.pojo.Collect;
import com.mei.pojo.Comment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository
public interface CollectMapper {

    @Select("select * from mall.collect where username=#{username}")
    List<Collect> queryCollectListByName(String username);

    @Insert("insert into mall.collect values(null,#{username},#{pic},#{itemname},#{itemdetails},#{price},#{stock},#{time},#{itemid})")
    int addCollect(Collect collect);

    @Delete("delete from mall.collect where username=#{username} and itemid=#{itemid}")
    int delCollect(String username,int itemid);

    @Select("select * from mall.collect where username=#{username} and itemid=#{itemid}")
    Collect queryCollect(String username,int itemid);


}
