package com.mei.controller;

import com.mei.pojo.Business;
import com.mei.pojo.Item;
import com.mei.pojo.ItemAndBusiness;
import com.mei.pojo.User;
import com.mei.service.BusinessService;
import com.mei.service.FileService;
import com.mei.service.ItemService;
import com.mei.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class BusinessController {

    @Autowired
    BusinessService businessService;
    @Autowired
    ItemService itemService;
    @Autowired
    FileService fileService;

    @Autowired
    TagService tagService;

    @RequestMapping("/business")
    public String business(){

        return "business";
    }


    @RequestMapping("/onsale")
    @ResponseBody
    public Object onsale(String username){
        List<Business> businesses = businessService.queryListByOwner(username);
        List<ItemAndBusiness> list=new ArrayList<>();
        for (Business business : businesses) {
            int itemid = business.getItemid();
            Item item = itemService.queryItem(itemid);
            ItemAndBusiness itemAndBusiness = new ItemAndBusiness(item.getPic(), item.getName(), item.getDetails(), item.getPrice(), business.getStock(), business.getTime());
            list.add(itemAndBusiness);
        }

        return list;
    }

    @RequestMapping("/tosell")
    public String tosell(Model model){
        Integer getsize = fileService.getsize();
        model.addAttribute("maxsize",getsize);

//        Integer size;
//        Integer uploadsize = (Integer) session.getAttribute("uploadsize");
//        if(uploadsize==null){
//            size=3*1024;
//        }else {
//            size=uploadsize;
//        }
//        session.setAttribute("size",size);
        return "tosell";
    }


    @RequestMapping("/additem")

    public String additem(String name, String details, BigDecimal price, Integer stock , String pic, HttpSession session,String time,String tags){
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();


        int i = itemService.insertItem(new Item(name, price, details, pic));
        int itemid = itemService.returnId();
        int i1 = businessService.insertBusiness(new Business(itemid, time, stock, username));
//        tagService.addTag(itemid,tag)
        String[] split = tags.split("\\s+");
        for (String tag : split) {
            int i2 = tagService.addTag(itemid, tag);
        }

        return "redirect:/business";
    }

}
