package com.mei.service;

import com.mei.pojo.Cart;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CartService {
    List<Cart> queryCartList();

    int saveCart(Cart cart);

    List<Cart> queryCartByName(String username);

    int delCartItem(String username,Integer id);

    int delCartAll(String username);

    int delCartByItemid(String username,Integer itemid);
}
