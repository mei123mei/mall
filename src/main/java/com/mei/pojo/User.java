package com.mei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {

    private int id;
    private String username;
    private String password;
    private String role;
    private String icon;
    private String status;


    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String username, String password, String role, String icon, String status) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.icon = icon;
        this.status = status;
    }
}
