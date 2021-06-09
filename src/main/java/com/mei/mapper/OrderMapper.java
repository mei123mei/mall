package com.mei.mapper;


import com.mei.pojo.Order;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository
public interface OrderMapper {

    @Insert("insert into mall.order values(#{id},#{singleprice},#{num},#{countprice},#{time},#{buyer},#{seller},#{itemid})")
   int addOrder(Order order);

    @Select("select * from mall.order")
    List<Order> queryList();

    @Select("select * from mall.order  where date(time)=#{time}")
    List<Order> queryListByTime(String time);

    @Select("select * from mall.order where buyer=#{buyer}")
    List<Order> queryListByBuyer(String buyer);



}
