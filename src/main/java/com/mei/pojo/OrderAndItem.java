package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data

@NoArgsConstructor
public class OrderAndItem implements Serializable {


    private Integer itemid;


    private String pic;


    private String itemname;

    private String details;

    private BigDecimal singleprice;

    private Integer num;

    private BigDecimal countprice;

    private String time;

    public OrderAndItem(Integer itemid, String pic, String itemname, String details, BigDecimal singleprice, Integer num, BigDecimal countprice, String time) {
        this.itemid = itemid;
        this.pic = pic;
        this.itemname = itemname;
        this.details = details;
        this.singleprice = singleprice;
        this.num = num;
        this.countprice = countprice;
        this.time = time;
    }
}

