package com.mei.service;

import com.mei.pojo.Tag;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RecommendService {

    int status(String username);
}
