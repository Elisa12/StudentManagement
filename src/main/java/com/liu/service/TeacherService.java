package com.liu.service;

import com.liu.pojo.StuGrade;
import com.liu.pojo.StudentInfoWithGrade;
import com.liu.pojo.TeaClass;
import com.liu.pojo.TeacherInfo;

import java.util.List;

public interface TeacherService {

    TeacherInfo getTeaInfoById(String nowLoginId);

    List<TeaClass> getTeaClassById(String nowLoginId);

    List<StudentInfoWithGrade> getTeaClassInfo(Integer classId,String teaId);

    Integer addStuGrades(List<StuGrade> stuGrades);
}
