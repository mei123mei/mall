package com.mei.controller;

import com.mei.pojo.Business;
import com.mei.pojo.Collect;
import com.mei.service.BusinessService;
import com.mei.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CollectController {
    @Autowired
    CollectService collectService;
    @Autowired
    BusinessService businessService;

    @RequestMapping("/addcollect")
    @ResponseBody
    public String addcollect(Collect collect){
        Business business = businessService.queryById(collect.getItemid());
        collect.setStock(business.getStock());

        int i = collectService.addCollect(collect);

        return "ok";
    }


    @RequestMapping("/delcollect")
    @ResponseBody
    public String delcollect(String username,int itemid){
        int i = collectService.delCollect(username, itemid);

        return "ok";
    }

    @RequestMapping("/loadcollect")
    @ResponseBody
    public String loadcollect(String username,int itemid){
        Collect collect = collectService.queryCollect(username, itemid);
        if(collect!=null){
            return "true";
        }

        return "false";
    }


    @RequestMapping("/loadlist")
    @ResponseBody
    public Object loadmycollect(String username){
        List<Collect> collects = collectService.queryCollectListByName(username);

        return collects;
    }

}
