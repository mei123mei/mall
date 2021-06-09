package com.mei.mapper;

import com.mei.pojo.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserMapper {

    List<User> queryUserList();

    List<User> queryUserByName(String username);

    @Select("select user.icon from ssmbuild.user where username=#{username}")
    User queryUser(@Param("username") String username);

    //    update  ssmbuild.user set icon='ddsdsd' where username='mei'
    @Update("update  ssmbuild.user set icon=#{changeIcon} where username=#{username}")
    int updateHead(String changeIcon,String username);

    @Insert({"insert into mall.user values(null,#{username},#{password},0,'/images/logins.png',0,'请输入地址')"})
    int addUser(User user);

    @Insert("insert into mall.email values(null,#{username},#{email})")
    int addEmail(String username,String email);

    @Select("select email from mall.email where username=#{username}")
    String queryEmail(String username);




}
