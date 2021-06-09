package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item implements Serializable {
    private int id;
    private String name;
    private BigDecimal price;
    private String details;
    private String pic;

    public Item(String name, BigDecimal price, String details, String pic) {
        this.name = name;
        this.price = price;
        this.details = details;
        this.pic = pic;
    }
}
