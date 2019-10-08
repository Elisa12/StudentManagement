package com.liu.mapper;

import com.liu.pojo.CollOrProInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommonsMapper {
    Integer haveStudent(@Param("id")String id);

    List<CollOrProInfo> getAllCollInfo();

    List<CollOrProInfo> getAllProInfo();

    Integer haveTeacher(String id);
}
