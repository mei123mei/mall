package com.mei.service;

import com.mei.mapper.TagMapper;
import com.mei.pojo.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagServiceImpl implements TagService {

    @Autowired
    TagMapper tagMapper;

    @Override
    public int addTag(Integer itemid, String tag) {
        int i = tagMapper.addTag(itemid, tag);
        return i;
    }

    @Override
    public List<Tag> queryListTag() {
        List<Tag> tags = tagMapper.queryListTag();
        return tags;
    }

    @Override
    public List<Tag> queryListTagByItemId(Integer itemid) {
        List<Tag> tags = tagMapper.queryListTagByItemId(itemid);
        return tags;
    }
}
