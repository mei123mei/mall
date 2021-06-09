package com.mei.service;

import com.mei.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    List<User> queryUserList();

    List<User> queryUserByName(String username);

    int addUser(User user);

    int addEmail(String username,String email);

    String queryEmail(String username);



}
