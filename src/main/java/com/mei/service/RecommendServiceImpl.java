package com.mei.service;

import com.mei.mapper.RecommendMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class RecommendServiceImpl implements  RecommendService{

    @Autowired
    RecommendMapper recommendMapper;

    @Override
    public int status(String username) {
        int status = recommendMapper.status(username);
        return status;
    }
}
