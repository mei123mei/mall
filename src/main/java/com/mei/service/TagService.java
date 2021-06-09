package com.mei.service;

import com.mei.pojo.Tag;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TagService {

    int addTag(Integer itemid,String tag);

    List<Tag> queryListTag();

    List<Tag> queryListTagByItemId(Integer itemid);
}
