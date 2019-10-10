package test;

import com.liu.mapper.TeacherMapper;
import com.liu.pojo.StuGrade;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = {com.liu.StudentManagementApplication.class})
public class TestMybatis {
    @Autowired
    private TeacherMapper teacherMapper;
    @Test
    public void  test1() {
        Integer integer = teacherMapper.existData(StuGrade.builder().stuId("20164221103").classId(3).build());
    }
}
