package com.liu.config;


import com.liu.interceptor.AdminInterceptor;
import com.liu.interceptor.LoginInterceptor;
import com.liu.interceptor.StudentInterceptor;
import com.liu.interceptor.TeacherInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Configuration
public class MyConfig implements WebMvcConfigurer {
    @Bean
    public WebMvcConfigurer webMvcConfigurer() {
        WebMvcConfigurer webMvcConfigurer = new WebMvcConfigurer() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
               registry.addViewController("/index.html").setViewName("index");
               registry.addViewController("/adm_index.html").setViewName("admin/index");
               registry.addViewController("/stu_index.html").setViewName("student/index");
               registry.addViewController("/tea_index.html").setViewName("teacher/index");
            }




           @Override
            public void addInterceptors(InterceptorRegistry registry) {
                String loginExcludes [] = {
                        "/","/index.html","/login","/goView","/error","/com/**"
                };
                String admExcludes [] = {
                        "/","/index.html","/login","/goView","/stu_*.html","/tea_*.html","/stu/**","/tea/**","/error","/com/**"
                };
                String stuExcludes [] = {
                        "/","/index.html","/login","/goView","/adm_*.html","/tea_*.html","/adm/**","/tea/**","/error","/com/**"
                };
                String teaExcludes [] = {
                        "/","/index.html","/login","/goView","/adm_*.html","/adm/**","/stu_*.html","/stu/**","/error","/com/**"
                };
                registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**").excludePathPatterns(loginExcludes);
                registry.addInterceptor(new AdminInterceptor()).addPathPatterns("/**").excludePathPatterns(admExcludes);
                registry.addInterceptor(new TeacherInterceptor()).addPathPatterns("/**").excludePathPatterns(teaExcludes);
                registry.addInterceptor(new StudentInterceptor()).addPathPatterns("/**").excludePathPatterns(stuExcludes);

            }

        };
        return webMvcConfigurer;
    }
}
