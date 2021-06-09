package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order implements Serializable {

    private Integer id;

    private BigDecimal singleprice;

    private Integer num;

    private BigDecimal countprice;

    private String time;

    private String buyer;

    private String seller;

    private Integer itemid;


}
