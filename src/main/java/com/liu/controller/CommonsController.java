package com.liu.controller;

import com.liu.message.AjaxResponse;
import com.liu.pojo.CollOrProInfo;
import com.liu.service.CommonsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*/com/allClassInfo*/
@RestController
@RequestMapping("/com")
public class CommonsController {
    @Autowired
    private CommonsService commonsService;

    /*添加学生前，检查数据库是否有重复数据 来自：addStudent.html页面发送*/
    @GetMapping("/students/{id}")
    public Integer haveStudent(@PathVariable String id) {
        Integer integer = commonsService.haveStudent(id);
        return integer;
    }

    /*获取所有学院与专业信息*/
    @GetMapping("/allClassInfo")
    public AjaxResponse allClassInfo() {
        List<CollOrProInfo> allCollInfo = commonsService.getAllCollInfo();
        List<CollOrProInfo> allProInfo = commonsService.getAllProInfo();
        Map<String,Object> allClassInfo = new HashMap<>();
        allClassInfo.put("allCollInfo",allCollInfo);
        allClassInfo.put("allProInfo",allProInfo);
        return AjaxResponse.builder().code(200).data(allClassInfo).build();
    }
    /*添加教师前，检查数据库是否有重复数据*/
    @GetMapping("/teachers/{id}")
    public Integer haveTeacher(@PathVariable String id) {
        Integer integer = commonsService.haveTeacher(id);
        return integer;
    }

}
