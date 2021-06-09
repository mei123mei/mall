package com.mei.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mei.cache.RedisCache;
import com.mei.pojo.Comment;
import com.mei.pojo.Item;
import com.mei.pojo.Order;
import com.mei.pojo.User;
import com.mei.service.*;
import com.mei.utils.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    FileService fileService;

    @Autowired
    ItemService itemService;

    @Autowired
    CommentService commentService;

    @Autowired
    JavaMailSenderImpl mailSender;

    @Autowired
    OrderService orderService;


    @RequestMapping("/l")
    public String lUser(@RequestParam("pageNum") Integer pageNum,Model model){

        PageHelper.startPage(pageNum, 6);
        List<User> userList;

            userList = userService.queryUserList();


        model.addAttribute("list",userList);
        PageInfo<User> pageInfo = new PageInfo<>(userList);
        Map<String, Object> data = new HashMap<>();
        data.put("userList", userList);
        data.put("total", pageInfo.getTotal());
        data.put("curPage", pageInfo.getPageNum());
        data.put("prePage", pageInfo.getPrePage());
        data.put("nextPage", pageInfo.getNextPage());
        data.put("pages",pageInfo.getPages());
        model.addAttribute("data",data);
        return "user-list";
    }

    @RequestMapping("/search")
    @ResponseBody
    public List search(String keyword){
        List<User> userList = userService.queryUserByName(keyword);
        return userList;
    }


    @RequestMapping("/login")
    public String login(){

        return "login";
    }

    @RequestMapping("/check")
    public String check(String username, String password, HttpSession session){
        List<User> userList = userService.queryUserList();
        for (User user : userList) {
            if(user.getUsername().equals(username)){
                if(user.getPassword().equals(password)&&user.getStatus().equals("0")){
                    if(user.getRole().equals("1")){
                        session.setAttribute("user",user);
                        return "redirect:/root"; //超级用户
                    }
                    session.setAttribute("user",user);
                    return "redirect:user";//普通用户
                }

            }

        }
        return "redirect:/login";//重定向
    }

    @RequestMapping("/user")
    public String toUser(HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        model.addAttribute("user",user);
        return "mall";
    }

    @RequestMapping("/root")
    public String toRoot(){

        return "root";
    }

    @RequestMapping("/setBasic")
    public String setBasic(){

        return "set-basic";
    }

    @RequestMapping("/setUpload")
    public String setUpload(){

        return "set-upload";
    }


    @RequestMapping("/returnsize")
    @ResponseBody
    public Object returnsize(){
        Integer getsize = fileService.getsize();

        return getsize;
    }

    @RequestMapping("/i")
    public String i(@RequestParam("pageNum") Integer pageNum,Model model){

        PageHelper.startPage(pageNum, 10);
        List<Item> itemList;

        itemList = itemService.queryItemList();


        model.addAttribute("list",itemList);
        PageInfo<Item> pageInfo = new PageInfo<>(itemList);
        Map<String, Object> data1 = new HashMap<>();
        data1.put("userList", itemList);
        data1.put("total", pageInfo.getTotal());
        data1.put("curPage", pageInfo.getPageNum());
        data1.put("prePage", pageInfo.getPrePage());
        data1.put("nextPage", pageInfo.getNextPage());
        data1.put("pages",pageInfo.getPages());
        model.addAttribute("data",data1);


        return "item-list";
    }

    @RequestMapping("/comment")
    public String comment(@RequestParam("pageNum") Integer pageNum,Model model){

        PageHelper.startPage(pageNum, 20);
        List<Comment> commentList;

        commentList =commentService.queryCommentList();


        model.addAttribute("list",commentList);
        PageInfo<Comment> pageInfo = new PageInfo<>(commentList);
        Map<String, Object> data2 = new HashMap<>();
        data2.put("userList", commentList);
        data2.put("total", pageInfo.getTotal());
        data2.put("curPage", pageInfo.getPageNum());
        data2.put("prePage", pageInfo.getPrePage());
        data2.put("nextPage", pageInfo.getNextPage());
        data2.put("pages",pageInfo.getPages());
        model.addAttribute("data",data2);



        return "comment-list";
    }

    @RequestMapping("/ad")
    public String ad(){

        return "ad";
    }


    @RequestMapping("/notice")
    public String notice(){

        return "notice";
    }


    @RequestMapping("/register")
    public String register(){

        return "register";
    }

    @RequestMapping("/getCode")
    @ResponseBody
    @Async
    public String getCode(String userEmail){
        String code = UUIDUtil.generateShortUuid();//验证码
        RedisCache.saveCode(userEmail,code);
        SimpleMailMessage message = new SimpleMailMessage();
        message.setSubject("注册验证码");//标题
        message.setText(code);//内容
        message.setTo(userEmail);//"3175185905@qq.com"
        message.setFrom("244258267@qq.com");
        mailSender.send(message);
        return "验证码已发出";
    }

    @RequestMapping("/toRegister")

    @Transactional
    public String toRegister(String username,String password,String checkcode, String userEmail){


        String rCode = (String) RedisCache.getCode(userEmail);

        if(checkcode.equalsIgnoreCase(rCode)) {
            int i = userService.addUser(new User(username, password));
            int i1 = userService.addEmail(username, userEmail);
            return "redirect:/login";
        }


        return "redirect:/register";
    }


    @RequestMapping("/order")
    public String order(@RequestParam("pageNum") Integer pageNum,Model model){

        PageHelper.startPage(pageNum, 20);
        List<Order> orderList;

        orderList =orderService.queryList();


        model.addAttribute("list",orderList);
        PageInfo<Order> pageInfo = new PageInfo<>(orderList);
        Map<String, Object> data2 = new HashMap<>();
        data2.put("userList", orderList);
        data2.put("total", pageInfo.getTotal());
        data2.put("curPage", pageInfo.getPageNum());
        data2.put("prePage", pageInfo.getPrePage());
        data2.put("nextPage", pageInfo.getNextPage());
        data2.put("pages",pageInfo.getPages());
        model.addAttribute("data",data2);



        return "order-list";
    }






}
