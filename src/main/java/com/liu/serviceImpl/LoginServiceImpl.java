package com.liu.serviceImpl;

import com.liu.mapper.LoginMapper;
import com.liu.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;
    @Override
    public Integer getLoginInfoAdm(String id, String password) {
        Integer loginInfo = loginMapper.getLoginInfoAdm(id, password);
        return loginInfo;
    }

    @Override
    public Integer getLoginInfoStu(String id, String password) {
        Integer loginInfoStu = loginMapper.getLoginInfoStu(id, password);
        return loginInfoStu;
    }

    @Override
    public Integer getLoginInfoTea(String id, String password) {
        Integer loginInfoTea = loginMapper.getLoginInfoTea(id, password);
        return loginInfoTea;
    }
}
