package com.liu.controller;

import com.liu.message.AjaxResponse;
import com.liu.pojo.EditPassword;
import com.liu.pojo.GradeInfo;
import com.liu.pojo.StudentInfo;
import com.liu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/stu")
public class StudentController {
    @Autowired
    private StudentService studentService;

    /*跳转到登录学生的基本信息页面*/
    @GetMapping("/goLookMyself")
    public String goLookMyself(Model model, HttpSession session) {
        String nowLoginId = (String) session.getAttribute("nowLoginId");
        StudentInfo stuInfoById = studentService.getStuInfoById(nowLoginId);
        model.addAttribute("stuInfo",stuInfoById);
        return "student/lookMyself";
    }

    /*跳转到登录学生的成绩信息页面*/
    @GetMapping("/goLookGrade")
    public String goLookGrade(Model model,HttpSession session){
        String  nowLoginId = (String) session.getAttribute("nowLoginId");
        List<GradeInfo> grades =  studentService.getStuGradeById(nowLoginId);
        model.addAttribute("grades",grades);
        return "student/lookGrade";
    }

    @GetMapping("/goEditPassword")
    public String goEditPassword() {
        return "/student/editPassword";
    }

    /*修改密码具体逻辑*/
    @PutMapping("/passwords")
    @ResponseBody
    public AjaxResponse editPassword(EditPassword editPassword, HttpSession session) {
        String id = (String) session.getAttribute("nowLoginId");
        if(studentService.editPassword(editPassword,id)) {
            return AjaxResponse.builder().code(200).build();
        }
        else return AjaxResponse.builder().code(100).build();
    }

}
