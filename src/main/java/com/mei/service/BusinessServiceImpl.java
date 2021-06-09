package com.mei.service;

import com.mei.mapper.BusinessMapper;
import com.mei.pojo.Business;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusinessServiceImpl implements BusinessService{

    @Autowired
    BusinessMapper businessMapper;

    @Override
    public List<Business> queryListByOwner(String owner) {
        List<Business> businesses = businessMapper.queryListByOwner(owner);
        return businesses;
    }

    @Override
    public Business queryById(int itemid) {
        Business business = businessMapper.queryById(itemid);
        return business;
    }

    @Override
    public int insertBusiness(Business business) {
        int i = businessMapper.insertBusiness(business);
        return i;
    }

    @Override
    public List<Business> queryBusinessOrderByTime() {
        List<Business> businesses = businessMapper.queryBusinessOrderByTime();
        return  businesses;
    }

    @Override
    public String querySeller(Integer itemid) {
        String s = businessMapper.querySeller(itemid);
        return s;
    }

    @Override
    public int decrStock(Integer itemid, Integer num) {
        int i = businessMapper.decrStock(itemid, num);
        return i;
    }
}
