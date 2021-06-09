package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Collect implements Serializable {
    private Integer id;
    private String username;
    private String pic;
    private String itemname;
    private String itemdetails;
    private BigDecimal price;
    private int stock;
    private String time;
    private int itemid;
}
