package com.liu.mapper;

import org.apache.ibatis.annotations.Param;

public interface LoginMapper {
    Integer getLoginInfoAdm(@Param("userId") String id,@Param("password") String password);

    Integer getLoginInfoStu(@Param("userId") String id,@Param("password") String password);

    Integer getLoginInfoTea(@Param("userId") String id,@Param("password") String password);
}
