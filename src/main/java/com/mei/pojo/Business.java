package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Business implements Serializable {
    private int id;
    private int itemid;
    private String time;
    private int stock;
    private String owner;

    public Business(int itemid, String time, int stock, String owner) {
        this.itemid = itemid;
        this.time = time;
        this.stock = stock;
        this.owner = owner;
    }
}
