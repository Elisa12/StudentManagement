package com.liu.serviceImpl;

import com.liu.mapper.CommonsMapper;
import com.liu.pojo.CollOrProInfo;
import com.liu.service.CommonsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commonsService")
public class CommonsServiceImpl implements CommonsService {
    @Autowired
    private CommonsMapper commonsMapper;
    @Override
    public Integer haveStudent(String id) {
        Integer integer = commonsMapper.haveStudent(id);
        return integer;
    }

    @Override
    public List<CollOrProInfo> getAllCollInfo() {
        List<CollOrProInfo> allCollInfo = commonsMapper.getAllCollInfo();
        return allCollInfo;
    }

    @Override
    public List<CollOrProInfo> getAllProInfo() {
        List<CollOrProInfo> allProInfo = commonsMapper.getAllProInfo();
        return allProInfo;
    }

    @Override
    public Integer haveTeacher(String id) {
        Integer integer = commonsMapper.haveTeacher(id);
        return integer;
    }

}
