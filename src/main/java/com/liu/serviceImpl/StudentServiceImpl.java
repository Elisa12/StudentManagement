package com.liu.serviceImpl;

import com.liu.mapper.StudentMapper;
import com.liu.pojo.EditPassword;
import com.liu.pojo.GradeInfo;
import com.liu.pojo.StudentInfo;
import com.liu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public StudentInfo getStuInfoById(String nowLoginId) {
        StudentInfo stuInfoById = studentMapper.getStuInfoById(nowLoginId);
        return stuInfoById;
    }

    @Override
    public List<GradeInfo> getStuGradeById(String nowLoginId) {
        List<GradeInfo> grades =  studentMapper.getStuGradeById(nowLoginId);
        return grades;
    }

    @Override
    public boolean editPassword(EditPassword editPassword,String id) {
        if(editPassword.getPassword().equals(studentMapper.getPasswordById(id))) {
            studentMapper.editPassword(editPassword.getNewPassword(),id);
            return true;
        }
        else {
            return false;
        }
    }
}
