package com.mei.mapper;

import com.mei.pojo.Item;
import com.mei.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ItemMapper {

    @Select("select * from mall.item")
    List<Item> queryItemList();

    @Select("select * from mall.item where id=#{id}")
    Item queryItem(@Param("id") int id);

    @Insert("insert into mall.item values(null,#{name},#{price},#{details},#{pic})")
    int insertItem(Item item);

    @Select("SELECT LAST_INSERT_ID()")
    int returnId();









}
