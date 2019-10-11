package com.liu.mapper;

import com.liu.pojo.GradeInfo;
import com.liu.pojo.StudentInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {

    StudentInfo getStuInfoById(@Param("id") String nowLoginId);

    List<GradeInfo> getStuGradeById(@Param("id") String nowLoginId);

    String getPasswordById(@Param("id") String id);

    void editPassword(@Param("password") String newPassword, @Param("id") String id);
}
