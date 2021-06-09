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
public interface TagMapper {

    @Insert("insert into mall.tag values(null,#{itemid},#{tag})")
   int addTag(Integer itemid,String tag);

    @Select("select * from mall.tag ")
    List<Tag> queryListTag();

    @Select("select * from mall.tag where itemid=#{itemid}")
    List<Tag> queryListTagByItemId(Integer itemid);


}
