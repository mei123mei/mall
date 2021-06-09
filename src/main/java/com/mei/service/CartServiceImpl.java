package com.mei.service;

import com.mei.mapper.CartMapper;
import com.mei.pojo.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService{

    @Autowired
    CartMapper cartMapper;

    @Override
    public List<Cart> queryCartList() {
        List<Cart> cartList = cartMapper.queryCartList();
        return cartList;
    }

    @Override
    public int saveCart(Cart cart) {
        int i = cartMapper.saveCart(cart);
        return i;

    }

    @Override
    public List<Cart> queryCartByName(String username) {
        List<Cart> list = cartMapper.queryCartByName(username);
        return list;
    }

    @Override
    public int delCartItem(String username, Integer id) {
        int i = cartMapper.delCartItem(username, id);
        return i;
    }

    @Override
    public int delCartAll(String username) {
        int i = cartMapper.delCartAll(username);
        return i;
    }

    @Override
    public int delCartByItemid(String username, Integer itemid) {
        int i = cartMapper.delCartByItemid(username, itemid);
        return i;
    }
}
