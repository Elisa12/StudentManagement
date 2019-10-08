package com.liu.service;

import com.liu.pojo.CollOrProInfo;

import java.util.List;

public interface CommonsService {
    Integer haveStudent(String id);

    List<CollOrProInfo> getAllCollInfo();

    List<CollOrProInfo> getAllProInfo();

    Integer haveTeacher(String id);
}
