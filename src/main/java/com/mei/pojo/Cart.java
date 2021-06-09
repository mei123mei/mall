package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart implements Serializable {
    private int id;
    private String username;
    private String itemname;
    private BigDecimal price;
    private int num;
    private String pic;
    private String details;
    private Integer itemid;


    public Cart(String username, String itemname, BigDecimal price, int num,String pic,String details,Integer itemid) {
        this.username = username;
        this.itemname = itemname;
        this.price = price;
        this.num = num;
        this.pic=pic;
        this.details=details;
        this.itemid=itemid;

    }
}
