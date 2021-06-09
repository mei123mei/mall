package com.mei.controller;

import com.mei.mapper.FileMapper;
import com.mei.mapper.UserMapper;
import com.mei.pojo.Notice;
import com.mei.pojo.User;
import com.mei.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class FileController {



    @Autowired
    FileService fileService;

//    @RequestMapping("/upload")
//    public String fileUpload(@RequestParam("file") CommonsMultipartFile file , HttpServletRequest request, HttpSession session) throws IOException {
//        User user = (User) session.getAttribute("user");
//
//        //获取文件名 : file.getOriginalFilename();
//        String uploadFileName = user.getUsername()+file.getOriginalFilename();
//
//        //如果文件名为空，直接回到首页！
//        if ("".equals(uploadFileName)){
//            return "redirect:/root";
//        }
//        System.out.println("上传文件名 : "+uploadFileName);
//
//        String path = ResourceUtils.getURL("classpath:").getPath()+"static/upload";
//
////        //上传路径保存设置
////        String path = request.getServletContext().getRealPath("/upload");
//        //如果路径不存在，创建一个
//        File realPath = new File(path);
//        if (!realPath.exists()){
//            realPath.mkdir();
//        }
//        System.out.println("上传文件保存地址："+realPath);
//
//        InputStream is = file.getInputStream(); //文件输入流
//        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName)); //文件输出流
//
//        //读取写出
//        int len=0;
//        byte[] buffer = new byte[1024];
//        while ((len=is.read(buffer))!=-1){
//            os.write(buffer,0,len);
//            os.flush();
//        }
//        os.close();
//        is.close();
//        System.out.println(user);
//        String changeIcon="/upload/"+uploadFileName;
//        userMapper.updateHead(changeIcon,user.getUsername());
//        user.setIcon(changeIcon);
//        session.setAttribute("user",user);
//        return "redirect:/root";
//    }



    @RequestMapping("/itempicupload")
    @ResponseBody
    public Object itempicupload(@RequestParam("file") MultipartFile file ) throws IOException {
//        User user = (User) session.getAttribute("user");

        String s=""+UUID.randomUUID();
        //获取文件名 : file.getOriginalFilename();
        String uploadFileName = s+file.getOriginalFilename();

        //如果文件名为空，直接回到首页！
//        if ("".equals(uploadFileName)){
//            return "redirect:/tosell";
//        }
        System.out.println("图片上传文件名 : "+uploadFileName);

//        String path = ResourceUtils.getURL("classpath:").getPath()+"static/upload";
//        String path="/upload";


//        windows
    //     String path = "C:\\Users\\dong\\Desktop\\upload";
//        linux
       String path = "/home/upload";

//        //上传路径保存设置
//        String path = request.getServletContext().getRealPath("/upload");
        //如果路径不存在，创建一个
        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }
        System.out.println("上传文件保存地址："+realPath);

        InputStream is = file.getInputStream(); //文件输入流
        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName)); //文件输出流

        //读取写出
        int len=0;
        byte[] buffer = new byte[1024];
        while ((len=is.read(buffer))!=-1){
            os.write(buffer,0,len);
            os.flush();
        }
        os.close();
        is.close();


        Map<String, Object> result = new HashMap<>();
        result.put("msg", "ok");

        result.put("filename",uploadFileName);
        result.put("path","/upload/"+uploadFileName);
        return result;

    }


    @RequestMapping(value="/download")
    public void downloads(HttpServletResponse response , HttpServletRequest request) throws Exception{
        //要下载的图片地址
        String path = ResourceUtils.getURL("classpath:").getPath()+"static/upload";
        //String  path = request.getServletContext().getRealPath("/upload");
        String  fileName = "3.jpg";

        //1、设置response 响应头
        response.reset(); //设置页面不缓存,清空buffer
        response.setCharacterEncoding("UTF-8"); //字符编码
        response.setContentType("multipart/form-data"); //二进制传输数据
        //设置响应头
        response.setHeader("Content-Disposition",
                "attachment;fileName="+ URLEncoder.encode(fileName, "UTF-8"));

        File file = new File(path,fileName);
        //2、 读取文件--输入流
        InputStream input=new FileInputStream(file);
        //3、 写出文件--输出流
        OutputStream out = response.getOutputStream();

        byte[] buff =new byte[1024];
        int index=0;
        //4、执行 写出操作
        while((index= input.read(buff))!= -1){
            out.write(buff, 0, index);
            out.flush();
        }
        out.close();
        input.close();
//        return "ok";
    }

    @RequestMapping("saveuploadsize")

    public String saveuploadsize(Integer uploadsize){

        if(uploadsize>=0){
//            session.setAttribute("uploadsize",uploadsize);
            int i = fileService.saveSize(uploadsize);
        }
        return "redirect:/setUpload";
    }


    @RequestMapping("/adupload")
    @ResponseBody
    public Object adupload(@RequestParam("file") MultipartFile file) throws IOException {


        String s=""+UUID.randomUUID();
        //获取文件名 : file.getOriginalFilename();
        String uploadFileName = s+file.getOriginalFilename();

        //如果文件名为空，直接回到首页！
//        if ("".equals(uploadFileName)){
//            return "redirect:/tosell";
//        }


//        String path = ResourceUtils.getURL("classpath:").getPath()+"static/ad";


//        windows
     //    String path = "C:\\Users\\dong\\Desktop\\upload";
//        linux
       String path = "/home/upload";


        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }


        InputStream is = file.getInputStream(); //文件输入流
        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName)); //文件输出流

        //读取写出
        int len=0;
        byte[] buffer = new byte[1024];
        while ((len=is.read(buffer))!=-1){
            os.write(buffer,0,len);
            os.flush();
        }
        os.close();
        is.close();


        Map<String, Object> result = new HashMap<>();
        result.put("msg", "ok");

        result.put("filename",uploadFileName);
        result.put("path","/upload/"+uploadFileName);
        return result;

    }

    @RequestMapping("/logoupload")
    @ResponseBody
    public Object logoupload(@RequestParam("file") MultipartFile file) throws IOException {


        String s=""+UUID.randomUUID();
        //获取文件名 : file.getOriginalFilename();
        String uploadFileName = s+file.getOriginalFilename();

        //如果文件名为空，直接回到首页！
//        if ("".equals(uploadFileName)){
//            return "redirect:/tosell";
//        }


//        String path = ResourceUtils.getURL("classpath:").getPath()+"static/logo";
//        windows
      //  String path = "C:\\Users\\dong\\Desktop\\upload";
//        linux
        String path = "/home/upload";


        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }


        InputStream is = file.getInputStream(); //文件输入流
        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName)); //文件输出流

        //读取写出
        int len=0;
        byte[] buffer = new byte[1024];
        while ((len=is.read(buffer))!=-1){
            os.write(buffer,0,len);
            os.flush();
        }
        os.close();
        is.close();


        Map<String, Object> result = new HashMap<>();
        result.put("msg", "ok");

        result.put("filename",uploadFileName);
        result.put("path","/upload/"+uploadFileName);
        return result;

    }

    @RequestMapping("/changead")

    public String changead(String ad,String pic){
   //     System.out.println(ad);
//        System.out.println(pic);
        if(ad!=null){
            if(ad.equals("ad1"))
                fileService.changeAd1(pic);
            if(ad.equals("ad2"))
                fileService.changeAd2(pic);
            if(ad.equals("ad3"))
                fileService.changeAd3(pic);
            if(ad.equals("ad4"))
                fileService.changeAd4(pic);
            if(ad.equals("ad5"))
                fileService.changeAd5(pic);
        }


        return "redirect:/ad";
    }


    @RequestMapping("/savenotice")
    public String savenotice(String info,String time,HttpSession session) {
        User user = (User) session.getAttribute("user");
        int i = fileService.saveNotice(new Notice(null,info,time,user.getUsername()));

        return "redirect:/noticelist";
    }


    @RequestMapping("/noticelist")
    public String noticelist(Model model) {
        List<Notice> notices = fileService.queryNoticeList();
        model.addAttribute("notice",notices);
        return "noticelist";
    }


    @RequestMapping("/delnotice")

    public String delnotice(Integer id) {
       fileService.delNotice(id);
        return "redirect:/noticelist";
    }



    @RequestMapping("/searchbytime")
    @ResponseBody
    public Object searchbytime(String time) {
        List<Notice> notices = fileService.queryNoticeByTime(time);

        return notices;
    }

}