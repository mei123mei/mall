package com.mei.mapper;



import com.mei.pojo.Business;
import com.mei.pojo.Comment;
import com.mei.pojo.Item;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository
public interface BusinessMapper {

    @Select("select * from mall.business where owner=#{owner}")
    List<Business> queryListByOwner(String owner);

    @Select("select * from mall.business where itemid=#{itemid}")
    Business queryById(int itemid);

    @Insert("insert into mall.business values(null,#{itemid},#{time},#{stock},#{owner})")
    int insertBusiness(Business business);

    @Select("select * from mall.business order by time desc limit 10")
    List<Business> queryBusinessOrderByTime();

    @Select("select owner from mall.business where itemid=#{itemid}")
    String querySeller(Integer itemid);

    @Update("update mall.business set stock=stock-#{num} where itemid=#{itemid}")
    int decrStock(Integer itemid,Integer num);

}
