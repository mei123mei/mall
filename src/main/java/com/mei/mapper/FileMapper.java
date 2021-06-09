package com.mei.mapper;



import com.mei.pojo.Ad;
import com.mei.pojo.Business;
import com.mei.pojo.Comment;
import com.mei.pojo.Notice;
import org.apache.ibatis.annotations.*;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;


@Mapper
@Repository
public interface FileMapper {

    @Update("update mall.setting set maxsize=#{size}")
    int saveSize(Integer size);

    @Select("select maxsize from mall.setting")
    Integer getsize();

    @Update("update mall.ad set ad1=#{pic}")
    int changeAd1(String pic);

    @Update("update mall.ad set ad2=#{pic}")
    int changeAd2(String pic);

    @Update("update mall.ad set ad3=#{pic}")
    int changeAd3(String pic);

    @Update("update mall.ad set ad4=#{pic}")
    int changeAd4(String pic);

    @Update("update mall.ad set ad5=#{pic}")
    int changeAd5(String pic);

    @Select("select * from mall.ad limit 1")
    Ad queryAllAd();

    @Insert("insert into mall.notice values(null,#{info},#{time},#{username})")
    int saveNotice(Notice notice);

    @Delete("delete from mall.notice where id=#{id}")
    int delNotice(Integer id);

    @Select("select * from mall.notice")
    List<Notice> queryNoticeList();

    @Select("select * from mall.notice  where date(time)=#{time}")
    List<Notice> queryNoticeByTime(String time);

}
