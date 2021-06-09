package com.mei.config;

import com.mei.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class LoginInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

//            if(session.getAttribute("user")!=null){  //不关闭浏览器可自动登录
//            return  true;
//            }


//        System.out.println(request.getRequestURI().equals("/"));

//        if(request.getRequestURI().equals("/")){
//            return true;
//        }

        if(user==null){
            System.out.println("未登录拦截");
            response.sendRedirect("/login");
            return false;
        }


//        if(request.getRequestURI().contains("login")){
//            return true;
//        }
//
//        if(request.getRequestURI().equals("/error")){
//            return true;
//        }
//
//        if(request.getRequestURI().contains("main")){  //后期浏览商品可无登录浏览
//            return true;
//        }
        //这个搞鬼静态资源不生效 302
            //response.sendRedirect("/login");//session消失后（关闭浏览器）返回登录页面

//        不生效
//        if(request.getRequestURI().equals("/index")){
//            return true;
//        }


        System.out.println("路过");

        return true;  //先放行
//        // 如果是登陆页面则放行
//        if(request.getRequestURI().contains("Login")){
//            return true;
//        }
//        //第一次登陆无session 也要放行
//        if(request.getRequestURI().contains("login1")){
//            return true;
//        }
//        //总结 放行登陆页面和表单提交action地址
//        // 如果用户已登陆也放行
//        if(session.getAttribute("userInfo")!=null){
//            return  true;
//        }
//        // 用户没有登陆跳转到登陆页面
//        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,response);
//        return false;


    }
}
