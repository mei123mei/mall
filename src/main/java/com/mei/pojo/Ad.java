package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ad implements Serializable {
    private String ad1;

    private String ad2;

    private String ad3;

    private String ad4;

    private String ad5;
}
