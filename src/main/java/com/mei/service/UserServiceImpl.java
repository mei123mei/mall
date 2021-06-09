package com.mei.service;

import com.mei.mapper.UserMapper;
import com.mei.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;
    @Override
    public List<User> queryUserList() {
        List<User> userList = userMapper.queryUserList();
        return userList;
    }

    @Override
    public List<User> queryUserByName(String username) {
        List<User> userList = userMapper.queryUserByName(username);
        return  userList;
    }

    @Override
    public int addUser(User user) {
        int i = userMapper.addUser(user);
        return i;
    }

    @Override
    public int addEmail(String username, String email) {
        int i = userMapper.addEmail(username, email);
        return i;
    }

    @Override
    public String queryEmail(String username) {
        String s = userMapper.queryEmail(username);
        return s;
    }
}
