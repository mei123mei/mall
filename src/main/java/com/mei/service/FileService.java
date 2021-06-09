package com.mei.service;

import com.mei.pojo.Ad;
import com.mei.pojo.Notice;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface FileService {
    int saveSize(Integer size);

    Integer getsize();

    int changeAd1(String pic);

    int changeAd2(String pic);

    int changeAd3(String pic);

    int changeAd4(String pic);

    int changeAd5(String pic);

    Ad queryAllAd();

    int saveNotice(Notice notice);

    int delNotice(Integer id);

    List<Notice> queryNoticeList();

    List<Notice> queryNoticeByTime(String time);
}
