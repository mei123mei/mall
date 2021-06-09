package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment implements Serializable {

    private int id;
    private int itemid;
    private String time;
    private String info;
    private String username;
    private String pic;
    private Long likes;
    private String status;


    public Comment(int itemid, String time, String info,String username,String pic) {
        this.itemid = itemid;
        this.time = time;
        this.info = info;
        this.username=username;
        this.pic=pic;
    }


}
