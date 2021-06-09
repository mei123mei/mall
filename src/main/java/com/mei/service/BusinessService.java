package com.mei.service;

import com.mei.pojo.Business;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BusinessService {

    List<Business> queryListByOwner(String owner);

    Business queryById(int itemid);

    int insertBusiness(Business business);

    List<Business> queryBusinessOrderByTime();

    String querySeller(Integer itemid);

    int decrStock(Integer itemid,Integer num);
}
