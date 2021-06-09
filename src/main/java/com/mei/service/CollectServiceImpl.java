package com.mei.service;

import com.mei.mapper.CollectMapper;
import com.mei.pojo.Collect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectServiceImpl implements CollectService {

    @Autowired
    CollectMapper collectMapper;

    @Override
    public List<Collect> queryCollectListByName(String username) {
        List<Collect> collects = collectMapper.queryCollectListByName(username);
        return collects;
    }

    @Override
    public int addCollect(Collect collect) {
        int i = collectMapper.addCollect(collect);
        return i;
    }

    @Override
    public int delCollect(String username, int itemid) {
        int i = collectMapper.delCollect(username, itemid);
        return i;

    }

    @Override
    public Collect queryCollect(String username, int itemid) {
        Collect collect = collectMapper.queryCollect(username, itemid);
        return collect;
    }
}
