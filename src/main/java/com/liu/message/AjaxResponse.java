package com.liu.message;

import com.liu.pojo.StudentInfo;
import com.liu.pojo.TeacherInfo;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Map;
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AjaxResponse {
    private Integer code;
    private String message;
    private StudentInfo studentInfo;
    private TeacherInfo teacherInfo;
    private Map<String,Object> data;
}
