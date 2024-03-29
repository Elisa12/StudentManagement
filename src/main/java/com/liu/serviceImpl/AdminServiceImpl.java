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
    public void addStudent(Student student) {
        adminMapper.addStudent(student);
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
    public void addTeacher(Teacher teacher) {
        adminMapper.addTeacher(teacher);
    }

    @Override
    public void editTeacher(Teacher teacher) {
        adminMapper.editTeacher(teacher);
    }
}
