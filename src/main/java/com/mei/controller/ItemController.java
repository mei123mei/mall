package com.mei.controller;

import com.mei.pojo.*;
import com.mei.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class ItemController {

    @Autowired
    ItemService itemService;

    @Autowired
    FileService fileService;

    @Autowired
    BusinessService businessService;

    @Autowired
    CartService cartService;

    @Autowired
    UserService userService;

    @Autowired
    TagService tagService;

    @Autowired
    OrderService orderService;

    @Autowired
    CollectService collectService;




    @RequestMapping("/info")
    public String info(HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        String email = userService.queryEmail(user.getUsername());
        model.addAttribute("email",email);
        return "info";
    }

    @RequestMapping("/mycollect")
    public String mycollect(){

        return "mycollect";
    }

    @RequestMapping("/myorder")
    public String myorder(){

        return "myorder";
    }


    @RequestMapping("/itemload")
    @ResponseBody
    public Object itemload(HttpSession session){
        List<Item> items = itemService.queryItemList();
        Ad ad = fileService.queryAllAd();

        List<Business> businesses = businessService.queryBusinessOrderByTime();
        List<ItemAndBusiness> list=new ArrayList<>();
        for (Business business : businesses) {
            int itemid = business.getItemid();
            Item item = itemService.queryItem(itemid);
            ItemAndBusiness itemAndBusiness = new ItemAndBusiness(itemid,item.getPic(), item.getName(), item.getDetails(), item.getPrice(), business.getStock(), business.getTime());
            list.add(itemAndBusiness);
        }

        Map<String, Object> map = new HashMap();


//        model.addAttribute("items",items);
            User user = (User) session.getAttribute("user");
            String username ="";
            if(user!=null){
                username=user.getUsername();
            }


            map.put("username", username);
            map.put("items", items);
            map.put("ad1", ad.getAd1());
            map.put("ad2", ad.getAd2());
            map.put("ad3", ad.getAd3());
            map.put("ad4", ad.getAd4());
            map.put("ad5", ad.getAd5());

            map.put("ItemAndBusiness", list);

            List<Cart> list1 = cartService.queryCartByName(username);
            map.put("num", list1.size());
            List<Notice> notices = fileService.queryNoticeList();
            map.put("noticelist", notices);

            //        智能推荐
            Set<Item> recommendedItem = new HashSet<>();
            List<Order> orders = orderService.queryListByBuyer(username);
            List<Collect> collects = collectService.queryCollectListByName(username);
            //无收藏，无购买历史
            if (orders.size() == 0 && collects.size() == 0) {
                Set<Integer> set = new HashSet<>();
                Random r = new Random();
                while (set.size() < 5) {
                    int num = r.nextInt(items.size());
                    set.add(num);
                }
                for (Integer i : set) {
                    Item item = items.get(i);
                    recommendedItem.add(item);
                }

                map.put("recommendedItem", recommendedItem);

            } else {//有收藏或购买历史
                for (Order order : orders) {
                    Integer itemid = order.getItemid();
                    List<Tag> orderTags = tagService.queryListTagByItemId(itemid);
                    for (Tag orderTag : orderTags) {
                        Item item = itemService.queryItem(orderTag.getItemid());
                        recommendedItem.add(item);
                    }
                }
                for (Collect collect : collects) {
                    int itemid = collect.getItemid();
                    List<Tag> collectTags = tagService.queryListTagByItemId(itemid);
                    for (Tag collectTag : collectTags) {
                        Item item = itemService.queryItem(collectTag.getItemid());
                        recommendedItem.add(item);
                    }

                }
                while (recommendedItem.size() < 5) {
                    for (Item item : items) {
                        recommendedItem.add(item);
                        if (recommendedItem.size() == 5)
                            break;
                    }
                }
                map.put("recommendedItem", recommendedItem);
            }
        return map;
    }





    @RequestMapping("/itemdetail")
    public String itemdetail(int id,Model model){
        Item item = itemService.queryItem(id);
        model.addAttribute("item",item);

        return "itemdetail";
    }

}
