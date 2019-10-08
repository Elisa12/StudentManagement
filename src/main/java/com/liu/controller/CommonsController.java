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
    @GetMapping("/students/{id}")
    public Integer haveStudent(@PathVariable String id) {
        Integer integer = commonsService.haveStudent(id);
        return integer;
    }
    @GetMapping("/allClassInfo")
    public AjaxResponse allClassInfo() {
        List<CollOrProInfo> allCollInfo = commonsService.getAllCollInfo();
        List<CollOrProInfo> allProInfo = commonsService.getAllProInfo();
        Map<String,Object> allClassInfo = new HashMap<>();
        allClassInfo.put("allCollInfo",allCollInfo);
        allClassInfo.put("allProInfo",allProInfo);
        return AjaxResponse.builder().code(200).data(allClassInfo).build();
    }
    @GetMapping("/teachers/{id}")
    public Integer haveTeacher(@PathVariable String id) {
        Integer integer = commonsService.haveTeacher(id);
        return integer;
    }

}
