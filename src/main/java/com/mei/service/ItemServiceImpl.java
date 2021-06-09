package com.mei.service;

import com.mei.mapper.ItemMapper;
import com.mei.pojo.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemServiceImpl implements  ItemService{

    @Autowired
    ItemMapper itemMapper;

    @Override
    public List<Item> queryItemList() {
        List<Item> items = itemMapper.queryItemList();
        return items;
    }

    @Override
    public Item queryItem(int id) {
        Item item = itemMapper.queryItem(id);
        return item;
    }

    @Override
    public int insertItem(Item item) {
        int i = itemMapper.insertItem(item);
        return i;
    }

    @Override
    public int returnId() {
        int i = itemMapper.returnId();
        return i;
    }


}
