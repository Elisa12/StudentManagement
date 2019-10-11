package com.liu.service;

import com.liu.pojo.*;

import java.util.List;

public interface TeacherService {

    TeacherInfo getTeaInfoById(String nowLoginId);

    List<TeaClass> getTeaClassById(String nowLoginId);

    List<StudentInfoWithGrade> getTeaClassInfo(Integer classId,String teaId);

    Integer addStuGrades(List<StuGrade> stuGrades);

    boolean editPassword(EditPassword editPassword,String id);
}
