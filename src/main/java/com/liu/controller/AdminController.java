package com.liu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liu.message.AjaxResponse;
import com.liu.pojo.Student;
import com.liu.pojo.StudentInfo;
import com.liu.pojo.Teacher;
import com.liu.pojo.TeacherInfo;
import com.liu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/adm")
public class AdminController {
    @Autowired
    private AdminService adminService;

    /*跳转到查看学生信息页面*/
    @GetMapping("/goLookStudent")
    public String goLookStudent() {
        return "/admin/lookStudent";
    }

    /*跳转到编辑学生页面*/
    @GetMapping("/goEditStudent")
    public String goEditStudent(){
        return "/admin/editStudent";
    }

    /*跳转到查看教师信息页面*/
    @GetMapping("/goLookTeacher")
    public String goLookTeacher() {
        return "/admin/lookTeacher";
    }

    /*跳转到添加教师页面*/
    @GetMapping("/goAddTeacher")
    public String goAddTeacher() {
        return "/admin/addTeacher";
    }

    /*跳转到添加学生页面*/
    @GetMapping("/goAddStudent")
    public String goAddStudent() {
        return "admin/addStudent";
    }

    /*跳转到编辑教师信息页面*/
    @GetMapping("/goEditTeacher")
    public String goEditTeacher(){
        return "admin/editTeacher";
    }

    /*添加学生具体业务逻辑*/
    @PostMapping("/students")
    @ResponseBody
    public AjaxResponse addStudent(Student student) {
        String password = student.getCardId().substring(12);
        String year = student.getStuId().substring(0,4);
        student.setPassword(password);
        student.setYear(year);
        student.setComYear(year);
        adminService.addStudent(student);
        return AjaxResponse.builder().code(200).build();
    }

    /*查找学生具体业务逻辑*/
    @GetMapping("/students")
    @ResponseBody
    public AjaxResponse getStudentByConditions(@RequestParam("page")Integer page,@RequestParam("limit")Integer limit,Student student) {
        PageHelper.startPage(page,limit);
        List<StudentInfo> allStudent = adminService.getStudentByConditions(student);
        PageInfo<StudentInfo> pageInfo = new PageInfo<>(allStudent);
        Map<String,Object> students = new HashMap<>();
        students.put("allStudent",pageInfo);
        return AjaxResponse.builder().code(200).data(students).build();
    }

    /*编辑学生信息时，需要将回显的信息预先存到session中*/
    @PostMapping("/setEditStudentInfo")
    @ResponseBody
    public void setEditStudentInfo(StudentInfo studentInfo, HttpSession session) {
        session.setAttribute("editStudentInfo",studentInfo);
    }

    /*获取之前存到session中的信息*/
    @GetMapping("/getEditStudentInfo")
    @ResponseBody
    public AjaxResponse getEditStudentInfo(HttpSession session) {
        StudentInfo editStudentInfo = (StudentInfo) session.getAttribute("editStudentInfo");
        return AjaxResponse.builder().code(200).studentInfo(editStudentInfo).build();
    }

    /*修改学生信息*/
    @PutMapping("/students")
    @ResponseBody
    public AjaxResponse editStudent(Student student) {
        adminService.editStudent(student);
        return AjaxResponse.builder().code(200).build();
    }

    /*获取教师信息*/
    @GetMapping("/teachers")
    @ResponseBody
    public AjaxResponse getTeacherByConditions(@RequestParam("page")Integer page, @RequestParam("limit")Integer limit, Teacher teacher) {
        PageHelper.startPage(page,limit);
        List<TeacherInfo> allTeacher = adminService.getTeacherByConditions(teacher);
        PageInfo<TeacherInfo> pageInfo = new PageInfo<>(allTeacher);
        Map<String,Object> teachers = new HashMap<>();
        teachers.put("allTeacher",pageInfo);
        return AjaxResponse.builder().code(200).data(teachers).build();
    }

    /*添加教师信息*/
    @PostMapping("/teachers")
    @ResponseBody
    public AjaxResponse  addTeacher(Teacher teacher) {
        String password = teacher.getCardId().substring(12);
        teacher.setPassword(password);
        String year = teacher.getTeaId().substring(0,4);
        teacher.setYear(year);
        adminService.addTeacher(teacher);
        return AjaxResponse.builder().code(200).build();
    }

    /*编辑教师信息前，需要将信息预先存到session*/
    @PostMapping("/setEditTeacherInfo")
    @ResponseBody
    public void setEditTeacherInfo(TeacherInfo teacherInfo, HttpSession session) {
        session.setAttribute("editTeacherInfo",teacherInfo);
    }
    /*编辑页面发送该请求获取到session中的信息*/
    @GetMapping("/getEditTeacherInfo")
    @ResponseBody
    public AjaxResponse getEditTeacherInfo(HttpSession session) {
        TeacherInfo editTeacherInfo = (TeacherInfo) session.getAttribute("editTeacherInfo");
        return AjaxResponse.builder().code(200).teacherInfo(editTeacherInfo).build();
    }

    /*修改教师信息*/
    @PutMapping("/teachers")
    @ResponseBody
    public AjaxResponse editTeacher(Teacher teacher) {
        adminService.editTeacher(teacher);
        return AjaxResponse.builder().code(200).build();

    }
}
