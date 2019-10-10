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

    @GetMapping("/lookStudent")
    public String goLookStudent() {
        return "/admin/lookStudent";
    }
    @GetMapping("/editStudent")
    public String goEditStudent(){
        return "/admin/editStudent";
    }
    @GetMapping("/lookTeacher")
    public String goLookTeacher() {
        return "/admin/lookTeacher";
    }
    @GetMapping("/addTeacher")
    public String goAddTeacher() {
        return "/admin/addTeacher";
    }
    @GetMapping("/addStudent")
    public String goAddStudent() {
        return "admin/addStudent";
    }
    @GetMapping("/editTeacher")
    public String goEditTeacher(){
        return "admin/editTeacher";
    }



    @PostMapping("/students")
    @ResponseBody
    public AjaxResponse addStudent(Student student) {

        String password = student.getCardId().substring(12);
        String year = student.getStuId().substring(0,4);
        student.setPassword(password);
        student.setYear(year);
        student.setComYear(year);
        Integer integer = adminService.addStudent(student);
        return AjaxResponse.builder().code(200).status(integer).build();
    }

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

    @PostMapping("/setEditStudentInfo")
    @ResponseBody
    public void setEditStudentInfo(StudentInfo studentInfo, HttpSession session) {
        session.setAttribute("editStudentInfo",studentInfo);
    }

    @GetMapping("/getEditStudentInfo")
    @ResponseBody
    public AjaxResponse getEditStudentInfo(HttpSession session) {
        StudentInfo editStudentInfo = (StudentInfo) session.getAttribute("editStudentInfo");
        return AjaxResponse.builder().code(200).studentInfo(editStudentInfo).build();
    }

    @PutMapping("/students")
    @ResponseBody
    public AjaxResponse editStudent(Student student) {
        adminService.editStudent(student);
        return AjaxResponse.builder().code(200).build();
    }

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

    @PostMapping("/teachers")
    @ResponseBody
    public AjaxResponse  addTeacher(Teacher teacher) {
        String password = teacher.getCardId().substring(12);
        teacher.setPassword(password);
        String year = teacher.getTeaId().substring(0,4);
        teacher.setYear(year);
        Integer integer = adminService.addTeacher(teacher);
        return AjaxResponse.builder().code(200).build();
    }

    @PostMapping("/setEditTeacherInfo")
    @ResponseBody
    public void setEditTeacherInfo(TeacherInfo teacherInfo, HttpSession session) {
        session.setAttribute("editTeacherInfo",teacherInfo);
    }

    @GetMapping("/getEditTeacherInfo")
    @ResponseBody
    public AjaxResponse getEditTeacherInfo(HttpSession session) {
        TeacherInfo editTeacherInfo = (TeacherInfo) session.getAttribute("editTeacherInfo");
        return AjaxResponse.builder().code(200).teacherInfo(editTeacherInfo).build();
    }


    @PutMapping("/teachers")
    @ResponseBody
    public AjaxResponse editTeacher(Teacher teacher) {
        adminService.editTeacher(teacher);
        return AjaxResponse.builder().code(200).build();

    }
}
