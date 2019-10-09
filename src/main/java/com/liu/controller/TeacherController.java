package com.liu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liu.message.AjaxResponse;
import com.liu.pojo.StudentInfoWithGrade;
import com.liu.pojo.TeaClass;
import com.liu.pojo.TeacherInfo;
import com.liu.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/lookClass")
    public String goLookClass(){
        return "/teacher/lookClass";
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

    @GetMapping("/editGrade")
    public String goEditGrade() {
        return "/teacher/editGrade";
    }
    @PostMapping("/setTeaClass")
    @ResponseBody
    public void setTeaClass(TeaClass teaClass,HttpSession session) {
        Integer classId = teaClass.getClassId();
        String teaId = (String) session.getAttribute("nowLoginId");
        List<StudentInfoWithGrade> studentInfoWithGrade = teacherService.getTeaClassInfo(classId,teaId);
        session.setAttribute("studentInfoWithGrade",studentInfoWithGrade);
    }
}
