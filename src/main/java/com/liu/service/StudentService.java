package com.liu.service;

import com.liu.pojo.EditPassword;
import com.liu.pojo.GradeInfo;
import com.liu.pojo.StudentInfo;

import java.util.List;

public interface StudentService {

    StudentInfo getStuInfoById(String nowLoginId);

    List<GradeInfo> getStuGradeById(String nowLoginId);

    boolean editPassword(EditPassword editPassword, String id);
}
