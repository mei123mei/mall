package com.mei.service;

import com.mei.pojo.Order;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {

    int addOrder(Order order);


    List<Order> queryList();


    List<Order> queryListByTime(String time);

    List<Order> queryListByBuyer(String buyer);
}
