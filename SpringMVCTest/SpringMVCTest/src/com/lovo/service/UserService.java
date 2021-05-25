package com.lovo.service;

import com.lovo.bean.UserBean;

public interface UserService {


    public UserBean login(String username, String password);
    public boolean register(UserBean userBean);
}
