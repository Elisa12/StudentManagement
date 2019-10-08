package com.liu.controller;

import com.liu.message.AjaxResponse;
import com.liu.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;
    @PostMapping("/login")
    @ResponseBody
    public AjaxResponse login(String id, String password, HttpSession session) {
        session.removeAttribute("nowLogin");
        session.setAttribute("nowLoginId",id);
        Integer loginInfoAdm = loginService.getLoginInfoAdm(id, password);
        Integer loginInfoStu = loginService.getLoginInfoStu(id, password);
        Integer loginInfoTea = loginService.getLoginInfoTea(id, password);
        if(loginInfoAdm == 1) {
            session.setAttribute("nowLogin","admin");
            return AjaxResponse.builder().code(200).build();
        }
        if(loginInfoTea == 1) {
            session.setAttribute("nowLogin","teacher");
            return AjaxResponse.builder().code(200).build();
        }
        if(loginInfoStu == 1) {
            session.setAttribute("nowLogin", "student");
            return AjaxResponse.builder().code(200).build();
        }
        else {
            return AjaxResponse.builder().code(100).build();
        }
    }

    @GetMapping("/goView")
    public String goView(HttpSession session) {
        String  nowLogin = (String) session.getAttribute("nowLogin");
        if(nowLogin.equals("admin"))
            return "redirect:/adm_index.html";
        if(nowLogin.equals("teacher"))
            return "redirect:/tea_index.html";
        if(nowLogin.equals("student"))
            return "redirect:/stu_index.html";
        else
            return "redirect:/index.html";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index.html";
    }
}
