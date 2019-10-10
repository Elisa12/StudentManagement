package com.liu.serviceImpl;

import com.liu.mapper.TeacherMapper;
import com.liu.pojo.StuGrade;
import com.liu.pojo.StudentInfoWithGrade;
import com.liu.pojo.TeaClass;
import com.liu.pojo.TeacherInfo;
import com.liu.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherMapper teacherMapper;
    @Override
    public TeacherInfo getTeaInfoById(String nowLoginId) {
        TeacherInfo teaInfoById = teacherMapper.getTeaInfoById(nowLoginId);
        return teaInfoById;
    }

    @Override
    public List<TeaClass> getTeaClassById(String nowLoginId) {
        List<TeaClass> teaClassById = teacherMapper.getTeaClassById(nowLoginId);
        return teaClassById;
    }

    @Override
    public List<StudentInfoWithGrade> getTeaClassInfo(Integer classId,String teaId) {
        List<StudentInfoWithGrade> studentInfoWithGrade =  teacherMapper.getTeaClassInfo(classId,teaId);
        return studentInfoWithGrade;
    }

    @Override
    public Integer addStuGrades(List<StuGrade> stuGrades) {
        StuGrade stuGrade = stuGrades.get(0);
        Integer exist = teacherMapper.existData(stuGrade);
        if(exist == 0) {
            Integer integer = teacherMapper.addStuGrades(stuGrades);
            return  integer;
        }
        else {
            Integer integer = teacherMapper.updateStuGrades(stuGrades);
            return integer;
        }
    }
}
