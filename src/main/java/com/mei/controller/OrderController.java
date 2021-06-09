package com.mei.controller;

import com.mei.pojo.*;
import com.mei.service.BusinessService;
import com.mei.service.CartService;
import com.mei.service.ItemService;
import com.mei.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class OrderController {

    @Autowired
    OrderService orderService;

    @Autowired
    BusinessService businessService;

    @Autowired
    CartService cartService;

    @Autowired
    ItemService itemService;

    @RequestMapping("/topay")
    @ResponseBody
    public String topay(HttpSession session, BigDecimal singleprice,Integer num,BigDecimal countprice,String time,Integer itemid){
        User user = (User) session.getAttribute("user");

        String seller = businessService.querySeller(itemid);
        int i = orderService.addOrder(new Order(null, singleprice, num, countprice, time, user.getUsername(), seller, itemid));

        int i1 = cartService.delCartByItemid(user.getUsername(), itemid);

        int i2 = businessService.decrStock(itemid, num);


//            int i = orderService.addOrder((Order)order);




        return "ok";
    }

    @RequestMapping("/orderlist")
    @ResponseBody
    public Object orderlist(String username){
        List<Order> orders = orderService.queryListByBuyer(username);
        List<OrderAndItem> list = new ArrayList<>();
        for (Order order : orders) {
            Item item = itemService.queryItem(order.getItemid());
            OrderAndItem orderAndItem = new OrderAndItem(order.getItemid(), item.getPic(), item.getName(), item.getDetails(), order.getSingleprice(), order.getNum(), order.getCountprice(), order.getTime());
            list.add(orderAndItem);
        }


        return list;
    }

}
