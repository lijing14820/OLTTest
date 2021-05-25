package com.lovo.service.Impl;

import com.lovo.bean.UserBean;
import com.lovo.dao.Impl.UserDaoImpl;
import com.lovo.dao.UserDao;
import com.lovo.service.UserService;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();

    @Override
    public UserBean login(String username, String password) {

        UserBean login = userDao.login(username, password);

        return login;
    }

    @Override
    public boolean register(UserBean userBean) {
        int register = userDao.register(userBean);
        if (register >=0) {
            return true;
        }
        return false;
    }
}
