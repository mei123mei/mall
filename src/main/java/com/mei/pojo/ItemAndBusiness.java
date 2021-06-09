package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class ItemAndBusiness implements Serializable {
    private Integer itemid;

    private String pic;
    private String itemname;
    private String itemdetails;
    private BigDecimal price;
    private int stock;
    private String time;

    public ItemAndBusiness(String pic, String itemname, String itemdetails, BigDecimal price, int stock, String time) {
        this.pic = pic;
        this.itemname = itemname;
        this.itemdetails = itemdetails;
        this.price = price;
        this.stock = stock;
        this.time = time;
    }
}
