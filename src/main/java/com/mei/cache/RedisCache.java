package com.mei.cache;


import com.mei.pojo.Ad;
import com.mei.utils.ApplicationContextUtil;
import org.apache.ibatis.cache.Cache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.Set;
import java.util.concurrent.TimeUnit;

public class RedisCache implements Cache {
//    @Autowired
//   RedisTemplate redisTemplate; 不能注入是mybatis实例化 不是spring工厂


    private final  String id;

    public RedisCache(String id){
        this.id=id;
    }

    //    返回cache唯一标识 com.mei.mapper.UserMapper 当前放入缓存的namespace
    @Override
    public String getId() {
        return this.id;
    }


    public static void saveAddress(String username,String address){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        redisTemplate.opsForValue().set(username,address);
    }

    public static Object getAddress(String username){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        String value = (String) redisTemplate.opsForValue().get(username);
        return value;
    }

    //生成验证码去，有效期为60秒
    public static void saveCode(String s,String code){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        redisTemplate.opsForValue().set(s,code,60, TimeUnit.SECONDS);
    }
    //取得验证码
    public static Object getCode(String s){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        String code = (String) redisTemplate.opsForValue().get(s);
        return code;
    }

//    public static void zSetAdd(Books books){
//        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//        redisTemplate.opsForZSet().add("rank",books.getBookName(),books.getSales());
//    }

    //销量排行榜
    public static Object getRank(Long start,Long end){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        // Set set = redisTemplate.opsForZSet().rangeByScore("rank", min, max);
        
//        反转
        Set set = redisTemplate.opsForZSet().reverseRange("rank", start, end);
        return set;
    }

    public static void setViewsZero(String key,String value){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        //redisTemplate.opsForValue().set(key,value);
        redisTemplate.opsForHash().put("views",key,value);
        
    }

    public static Object setViewsIncr(String key){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        //redisTemplate.opsForValue().set(key,value);
        Long views = redisTemplate.opsForHash().increment("views", key, 1);
        return views;
    }

//    商品 清空缓存

//    public static void setCommentsZero(String itemid,String commentid,Integer value ){
//        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//        //itemid 评论id 0
//        redisTemplate.opsForHash().put(itemid,commentid,value);
//    }

    public static Object setCommentsIncr(String itemid,String commentid,Integer length){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        Long comments = redisTemplate.opsForHash().increment(itemid, commentid, length);
        return comments;
    }

    //保存点赞状态
    public static  void  saveLikeStatus(String username,String commentid,String status){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        redisTemplate.opsForHash().put(username,commentid,status);
    }

    //取得点赞状态
    public static  String  showLikeStatus(String username,String commentid){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        String s  = (String) redisTemplate.opsForHash().get(username, commentid);
        return s;
    }

    //移除点赞状态
    public static  Long  removeLikeStatus(String username,String commentid){
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
        Long delete = redisTemplate.opsForHash().delete(username, commentid);
        return delete;
    }

//    public static Long getLikes(String itemid,String commentid){
//        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//
//        Long likes = (Long) redisTemplate.opsForHash().get(itemid, commentid);
//
//
//        return likes;
//    }

//    public static  void testObject(){
//        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//
//       redisTemplate.opsForValue().set("odff",new Ad("1","2","3","4","5"));
//
//       redisTemplate.opsForHash().put("h","ad",new Ad("1","2","3","4","5"));
//
//       Object hh=new Ad("1","2","3","4","5");
//
//        redisTemplate.opsForValue().set("yo",hh);
//
//
//
//    }









    @Override
    public void putObject(Object key, Object value) {
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//        redisTemplate.setKeySerializer(new StringRedisSerializer());
//        redisTemplate.setHashKeySerializer(new StringRedisSerializer());

        redisTemplate.opsForHash().put(id,key.toString(),value);
        System.out.println("放入缓存");

    }

    @Override
    public Object getObject(Object key) {
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//        redisTemplate.setKeySerializer(new StringRedisSerializer());
//        redisTemplate.setHashKeySerializer(new StringRedisSerializer());

        return redisTemplate.opsForHash().get(id,key.toString());
    }

    @Override
    public Object removeObject(Object o) {
        return null;
    } //没有实现

    @Override
    public void clear() {  //增删改都是走这个 清空缓存
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//        redisTemplate.setKeySerializer(new StringRedisSerializer());
//        redisTemplate.setHashKeySerializer(new StringRedisSerializer());

        redisTemplate.delete(id);
        System.out.println("清空缓存");


    }

    @Override
    public int getSize() { //获取哈希中的key value数量
        RedisTemplate redisTemplate = (RedisTemplate) ApplicationContextUtil.getBean("redisTemplate");
//        redisTemplate.setKeySerializer(new StringRedisSerializer());
//        redisTemplate.setHashKeySerializer(new StringRedisSerializer());


        return redisTemplate.opsForHash().size(id).intValue();
    }
}
