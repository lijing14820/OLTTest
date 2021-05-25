package com.lovo.dao;

import com.lovo.bean.UserBean;
import com.lovo.vo.UserVo;

import java.util.List;

public interface UserDao {
    public UserBean login(String username, String password);
    public int register(UserBean userBean);
}
