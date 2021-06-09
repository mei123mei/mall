package com.mei.service;

import com.mei.mapper.OrderMapper;
import com.mei.pojo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    OrderMapper orderMapper;

    @Override
    public int addOrder(Order order) {
        int i = orderMapper.addOrder(order);
        return i;
    }

    @Override
    public List<Order> queryList() {
        List<Order> orders = orderMapper.queryList();
        return orders;
    }

    @Override
    public List<Order> queryListByTime(String time) {
        List<Order> orders = orderMapper.queryListByTime(time);
        return orders;
    }

    @Override
    public List<Order> queryListByBuyer(String buyer) {
        List<Order> orders = orderMapper.queryListByBuyer(buyer);
        return orders;
    }
}
