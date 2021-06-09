package com.mei.mapper;

import com.mei.pojo.Cart;

import com.mei.pojo.Item;
import com.mei.pojo.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CartMapper {

    @Select("select * from mall.cart")
    List<Cart> queryCartList();

    @Insert("insert into mall.cart values(null,#{username},#{itemname},#{price},#{num},#{pic},#{details},#{itemid})")
    int saveCart(Cart cart);

    @Select("select * from mall.cart where username=#{username}")
    List<Cart> queryCartByName(String username);

    @Delete("delete from mall.cart where username=#{username} and id=#{id}")
    int delCartItem(String username,Integer id);

    @Delete("delete from mall.cart where username=#{username}")
    int delCartAll(String username);

    @Delete("delete from mall.cart where username=#{username} and itemid=#{itemid}")
    int delCartByItemid(String username,Integer itemid);

}
