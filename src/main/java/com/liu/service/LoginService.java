package com.liu.service;

public interface LoginService {
    Integer getLoginInfoAdm(String id,String password);

    Integer getLoginInfoStu(String id, String password);

    Integer getLoginInfoTea(String id, String password);
}
