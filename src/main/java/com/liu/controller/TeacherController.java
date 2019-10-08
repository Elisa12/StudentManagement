package com.liu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liu.message.AjaxResponse;
import com.liu.pojo.TeaClass;
import com.liu.pojo.TeacherInfo;
import com.liu.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/tea")
public class TeacherController {
    @Autowired
    private TeacherService teacherService;

    @GetMapping("/lookMyself")
    public String goLookMyself(Model model, HttpSession session) {
        String nowLoginId = (String) session.getAttribute("nowLoginId");
        TeacherInfo teaInfoById = teacherService.getTeaInfoById(nowLoginId);
        model.addAttribute("teaInfo",teaInfoById);
        return "teacher/lookMyself";
    }

    @GetMapping("/editGrade")
    public String goEditGrade(){
        return "/teacher/editGrade";
    }

    @GetMapping("/teaClass")
    @ResponseBody
    public AjaxResponse getTeaClass(@RequestParam("page")Integer page, @RequestParam("limit")Integer limit,HttpSession session) {
        PageHelper.startPage(page,limit);
        List<TeaClass> teaClasses = teacherService.getTeaClassById((String) session.getAttribute("nowLoginId"));
        PageInfo<TeaClass> pageInfo = new PageInfo<>(teaClasses);
        Map<String,Object> teaClass = new HashMap<>();
        teaClass.put("teaClass",pageInfo);
        return AjaxResponse.builder().code(200).data(teaClass).build();

    }
}
