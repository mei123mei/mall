package com.mei.service;


import com.mei.pojo.Item;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ItemService {

    List<Item> queryItemList();

    Item queryItem(int id);

    int insertItem(Item item);

    int returnId();



}
