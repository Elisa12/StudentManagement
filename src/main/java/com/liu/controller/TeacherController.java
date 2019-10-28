package com.liu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liu.message.AjaxResponse;
import com.liu.pojo.*;
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

    /*跳转到登录教师基本信息页面，并传送相关数据*/
    @GetMapping("/goLookMyself")
    public String goLookMyself(Model model, HttpSession session) {
        String nowLoginId = (String) session.getAttribute("nowLoginId");
        TeacherInfo teaInfoById = teacherService.getTeaInfoById(nowLoginId);
        model.addAttribute("teaInfo",teaInfoById);
        return "teacher/lookMyself";
    }

    /*跳转到课程信息页面*/
    @GetMapping("/goLookClass")
    public String goLookClass(){
        return "teacher/lookClass";
    }

    /*获取登录教师教过得所有课的信息*/
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

    /*跳转到录入成绩页面*/
    @GetMapping("/goEditGrade")
    public String goEditGrade() {
        return "teacher/editGrade";
    }

    /*点击录入成绩按钮发送该请求，目的是将该班级和课程成绩信息一起存入session，供editGrade.html取用*/
    @PostMapping("/setTeaClass")
    @ResponseBody
    public void setTeaClass(TeaClass teaClass,HttpSession session) {
        Integer classId = teaClass.getClassId();
        String teaId = (String) session.getAttribute("nowLoginId");
        List<StudentInfoWithGrade> studentInfoWithGrade = teacherService.getTeaClassInfo(classId,teaId);
        session.setAttribute("studentInfoWithGrade",studentInfoWithGrade);
        session.setAttribute("classId",classId);
    }

    /*修改成绩具体逻辑实现*/
    @PostMapping("/stuGrades")
    @ResponseBody
    public AjaxResponse addStuGrades(StuGradeModel stuGrade){
        List<StuGrade> stuGrades = stuGrade.getStuGrade();
        teacherService.addStuGrades(stuGrades);
        return AjaxResponse.builder().code(200).build();
    }

    /*跳转到修改密码页面*/
    @GetMapping("/goEditPassword")
    public String goEditPassword() {
        return "teacher/editPassword";
    }

    /*修改密码具体逻辑*/
    @PutMapping("/passwords")
    @ResponseBody
    public AjaxResponse editPassword(EditPassword editPassword, HttpSession session) {
        String id = (String) session.getAttribute("nowLoginId");
        if(teacherService.editPassword(editPassword,id)) {
            return AjaxResponse.builder().code(200).build();
        }
        else return AjaxResponse.builder().code(100).build();
    }
}
