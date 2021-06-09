package com.mei.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class  WebMvcConfig implements WebMvcConfigurer {


//路径映射
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
       // registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
       // registry.addResourceHandler("/image/**").addResourceLocations("file:C:/Users/dong/Desktop/upload/");

//        windows可用
      //  registry.addResourceHandler("/upload/**").addResourceLocations("file:C:/Users/dong/Desktop/upload/");

//        linux
        registry.addResourceHandler("/upload/**").addResourceLocations("file:/home/upload/");

    }
}
