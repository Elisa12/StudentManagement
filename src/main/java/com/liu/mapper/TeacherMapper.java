package com.liu.mapper;

import com.liu.pojo.StuGrade;
import com.liu.pojo.StudentInfoWithGrade;
import com.liu.pojo.TeaClass;
import com.liu.pojo.TeacherInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {

    TeacherInfo getTeaInfoById(@Param("id") String nowLoginId);

    List<TeaClass> getTeaClassById(@Param("id") String nowLoginId);

    List<StudentInfoWithGrade> getTeaClassInfo(@Param("classId") Integer classId, @Param("teaId") String teaId);


    Integer existData(StuGrade build);

    Integer addStuGrades(List<StuGrade> stuGrades);

    Integer updateStuGrades(List<StuGrade> stuGrades);

    String getPasswordById(@Param("id") String id);

    void editPassword(@Param("password") String newPassword,@Param("id")String id);
}