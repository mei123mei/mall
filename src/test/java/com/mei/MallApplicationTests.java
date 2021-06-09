package com.mei;

import com.mei.cache.RedisCache;
import com.mei.mapper.*;
import com.mei.pojo.*;
import com.mei.service.ScheduledTaskService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.util.*;

@SpringBootTest
class MallApplicationTests {
    @Autowired
    UserMapper userMapper;
    @Autowired
    ItemMapper itemMapper;
    @Autowired
    CartMapper cartMapper;

    @Autowired
    CommentMapper commentMapper;

    @Autowired
    BusinessMapper businessMapper;

    @Autowired
    CollectMapper collectMapper;

    @Autowired
    LikeMapper likeMapper;

    @Autowired
    FileMapper fileMapper;

    @Autowired
    ScheduledTaskService scheduledTaskService;

    @Test
    void contextLoads() {
//        List<User> userList = userMapper.queryUserList();
//        for (User user : userList) {
//            System.out.println(user);
//        }

//        List<User> f = userMapper.queryUserByName("f");
//        for (User user : f) {
//            System.out.println(user);
//        }

//        Item item = itemMapper.queryItem(2);
//        System.out.println(item);


//        List<Cart> cartList = cartMapper.queryCartList();
//        System.out.println(cartList);
//        System.out.println(new HashMap<>());

//        int i = cartMapper.saveCart(new Cart("mei","mm",new BigDecimal(13.21),2,"as","ffffff"));

//        List<Cart> list = cartMapper.queryCartByName("456");
//        for (Cart cart : list) {
//            System.out.println(cart);
//        }

//        int i = commentMapper.saveComment(new Comment(7, "2021-10-18", "信息"));

//        List<Comment> comments = commentMapper.queryCommentListByItemId(7);
//        for (Comment comment : comments) {
//            System.out.println(comment);
//        }

//        List<Business> businesses = businessMapper.queryListByOwner("456");
//        for (Business business : businesses) {
//            System.out.println(business);
//        }

//        int i = collectMapper.addCollect(new Collect(null, "456", "/images/oil.jpg", "油", "食用油", new BigDecimal(55.00), 100, "2021-03-24", 1));
//        List<Collect> collects = collectMapper.queryCollectListByName("456");
//        for (Collect collect : collects) {
//            System.out.println(collect);
//        }

//        int i = collectMapper.delCollect("456", 7);

//        RedisCache.setCommentsZero("8","5",0);
//        int i = commentMapper.returnId();
//        System.out.println(i);

//        Long object = (Long) RedisCache.setCommentsIncr("23", "56",1);
//        System.out.println(object);

//        int i = likeMapper.saveLikes("4", "6", 45L);

//        Long likes = RedisCache.getLikes("1", "23");
//        System.out.println(likes);

//        Long like = (Long) RedisCache.setCommentsIncr("1", "23", 0);
//        System.out.println(like);
//        int i = commentMapper.saveComment(new Comment(122, "2021-10-18", "txt","username","pic"));
//        fileMapper.changeAd("ad2","fdf");

//        Ad ad = fileMapper.queryAllAd();
//        System.out.println(ad.getAd1());
//        System.out.println(ad.getAd2());


//        RedisCache.testObject();

//        List<Notice> notices = fileMapper.queryNoticeByTime("2021-03-27");
//        for (Notice notice : notices) {
//            System.out.println(notice);
//        }

//        int hhhh = userMapper.addUser(new User("hhhh", "123"));

//        int i = businessMapper.decrStock(14, 3);
//        String  s = "a b    c        d   e";
//        String[] split = s.split("\\s+");
//        for (String s1 : split) {
//            System.out.println(s1);
//        }

//        scheduledTaskService.saveLikes();
//        Set<Integer> set=new HashSet();
//        set.add(12);
//        set.add(12);
//        for (Integer i : set) {
//            System.out.println(i);
//        }
//        System.out.println(set.size());


//        Set<Integer> set=new HashSet();
//        Random r =new Random();
//        while (set.size()<5){
//            int num=r.nextInt(185);
//            set.add(num);
//        }
//
//        List<Integer> recommendedItem=null;
//
//        for (Integer i : set) {
//
//            recommendedItem.add(i);
//        }

        String str1="123";
        String str2="123";
        System.out.println(str1==str2);

    }

}
