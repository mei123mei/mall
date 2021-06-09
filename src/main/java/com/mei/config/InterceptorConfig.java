package com.mei.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    /**
     * 注册自定义拦截器
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
      // InterceptorRegistration ir= registry.addInterceptor(new LoginInterceptor());
//
           registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/user");//此处后期root应该拦截
           registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/cart");
           registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/myorder");
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/mycollect");
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/business");
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/info");

        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/itemdetail");
//
////            ir.addPathPatterns("/**");//问题都解决了先放行
        //    ir.excludePathPatterns("/"); //不包括  这个其实不生效
//
//            System.out.println("拦截器配置类");
//
         //   ir.excludePathPatterns("/index.html");
//            ir.excludePathPatterns("/check");

//            registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**");
//            registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/");
    }

    @Bean
    public LoginInterceptor loginInterceptor(){
        return new LoginInterceptor();
    }
}


