package com.liu.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String nowLogin = (String) request.getSession().getAttribute("nowLogin");
       if(nowLogin == null) {
           request.setAttribute("errMsg","您还没有登录，请先登录");
           request.getRequestDispatcher("/index.html").forward(request,response);
           return false;
       }
       else return true;
    }
}
