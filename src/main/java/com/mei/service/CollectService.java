package com.mei.service;

import com.mei.pojo.Collect;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CollectService {
    List<Collect> queryCollectListByName(String username);

    int addCollect(Collect collect);

    int delCollect(String username,int itemid);

    Collect queryCollect(String username,int itemid);
}
