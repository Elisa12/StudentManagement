package com.liu.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        /*System.out.println(request.getRequestURI());*/
        String nowLogin = (String) request.getSession().getAttribute("nowLogin");
        if(nowLogin == "admin")
            return true;
        else{
            request.setAttribute("errMsg","您没有权限访问学工管理页面，请登录对应账号！");
            request.getRequestDispatcher("/index.html").forward(request,response);
            return false;
        }
    }
}
