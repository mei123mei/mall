package com.mei.controller;

import com.alibaba.fastjson.JSON;
import com.mei.pojo.Cart;
import com.mei.pojo.User;
import com.mei.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.List;

@Controller
public class CartController {
    @Autowired
    CartService cartService;

    @RequestMapping("/putCart")
    @ResponseBody
    public String putCart(HttpSession session, String itemname,BigDecimal price,int num,String pic,String details,Integer itemid){
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
//        System.out.println(username);
//        System.out.println(itemname);
//        System.out.println(price);
        int i = cartService.saveCart(new Cart(username,itemname, price, num,pic,details,itemid));

        return "ok";

    }


    @RequestMapping("/cart")
    public String cart(HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
        List<Cart> list = cartService.queryCartByName(username);


        String s = JSON.toJSONString(list);
        model.addAttribute("list",s);
        return "cart1";
    }



    @RequestMapping("/delcartitem")
    @ResponseBody
    public String delcartitem(HttpSession session,Integer id){
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
        int i = cartService.delCartItem(username, id);

        return "ok";
    }


    @RequestMapping("/delcartall")
    @ResponseBody
    public String delcartall(HttpSession session){
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
        int i = cartService.delCartAll(username);

        return "ok";
    }


}
