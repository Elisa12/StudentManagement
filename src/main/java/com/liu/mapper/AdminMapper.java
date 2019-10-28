package com.liu.mapper;

import com.liu.pojo.Student;
import com.liu.pojo.StudentInfo;
import com.liu.pojo.Teacher;
import com.liu.pojo.TeacherInfo;

import java.util.List;

public interface AdminMapper {
    void addStudent(Student student);

    void editStudent(Student student);

    List<StudentInfo> getStudentByConditions(Student student);

    List<TeacherInfo> getTeacherByConditions(Teacher teacher);

    void addTeacher(Teacher teacher);

    void editTeacher(Teacher teacher);
}
