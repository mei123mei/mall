package com.mei.service;

import com.mei.mapper.FileMapper;
import com.mei.pojo.Ad;
import com.mei.pojo.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileServiceImpl implements FileService {
    @Autowired
    FileMapper fileMapper;

    @Override
    public int saveSize(Integer size) {
        int i = fileMapper.saveSize(size);
        return i;

    }

    @Override
    public Integer getsize() {
        Integer getsize = fileMapper.getsize();
        return getsize;
    }

    @Override
    public int changeAd1(String pic) {
        int i = fileMapper.changeAd1(pic);
        return i;
    }

    @Override
    public int changeAd2(String pic) {
        int i = fileMapper.changeAd2(pic);
        return i;
    }

    @Override
    public int changeAd3(String pic) {
        int i = fileMapper.changeAd3(pic);
        return i;
    }

    @Override
    public int changeAd4(String pic) {
        int i = fileMapper.changeAd4(pic);
        return i;
    }

    @Override
    public int changeAd5(String pic) {
        int i = fileMapper.changeAd5(pic);
        return i;
    }

    @Override
    public Ad queryAllAd() {
        Ad ad = fileMapper.queryAllAd();
        return ad;
    }

    @Override
    public int saveNotice(Notice notice) {
        int i = fileMapper.saveNotice(notice);
        return i;
    }


    @Override
    public int delNotice(Integer id) {
        int i = fileMapper.delNotice(id);
        return i;
    }

    @Override
    public List<Notice> queryNoticeList() {
        List<Notice> notices = fileMapper.queryNoticeList();
        return notices;
    }

    @Override
    public List<Notice> queryNoticeByTime(String time) {
        List<Notice> notices = fileMapper.queryNoticeByTime(time);
        return notices;
    }


}
