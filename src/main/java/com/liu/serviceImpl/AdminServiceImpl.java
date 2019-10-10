package com.liu.serviceImpl;

import com.liu.mapper.AdminMapper;
import com.liu.pojo.Student;
import com.liu.pojo.StudentInfo;
import com.liu.pojo.Teacher;
import com.liu.pojo.TeacherInfo;
import com.liu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public Integer addStudent(Student student) {
        Integer integer = adminMapper.addStudent(student);
        return integer;
    }

    @Override
    public void editStudent(Student student) {
        adminMapper.editStudent(student);
    }

    @Override
    public List<StudentInfo> getStudentByConditions(Student student) {
        List<StudentInfo> studentByConditions = adminMapper.getStudentByConditions(student);
        return studentByConditions;
    }

    @Override
    public List<TeacherInfo> getTeacherByConditions(Teacher teacher) {
        List<TeacherInfo> teacherByConditions = adminMapper.getTeacherByConditions(teacher);
        return teacherByConditions;
    }

    @Override
    public Integer addTeacher(Teacher teacher) {
        Integer integer = adminMapper.addTeacher(teacher);
        return integer;
    }

    @Override
    public void editTeacher(Teacher teacher) {
        adminMapper.editTeacher(teacher);
    }
}
