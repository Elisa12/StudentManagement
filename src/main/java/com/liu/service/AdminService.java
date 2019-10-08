package com.liu.service;

import com.liu.pojo.Student;
import com.liu.pojo.StudentInfo;
import com.liu.pojo.Teacher;
import com.liu.pojo.TeacherInfo;

import java.util.List;

public interface AdminService {
    Integer addStudent(Student student);

    Integer editStudent(Student student);

    List<StudentInfo> getStudentByConditions(Student student);

    List<TeacherInfo> getTeacherByConditions(Teacher teacher);

    Integer addTeacher(Teacher teacher);

    Integer editTeacher(Teacher teacher);
}
