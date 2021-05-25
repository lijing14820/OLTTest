package com.lovo.dao.Impl;

import com.lovo.bean.UserBean;
import com.lovo.dao.UserDao;
import com.lovo.util.HibernateUtilEx;
import com.lovo.vo.UserVo;
import org.hibernate.Session;

import java.io.Serializable;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public UserBean login(String username, String password) {
        Session session = HibernateUtilEx.openSession();
        List<UserBean> userBeans = session.createQuery("from UserBean as u where u.username =? and u.password=? ").setString(0, username).setString(1, password).list();
        HibernateUtilEx.closeSession();
        if(userBeans.size()==0){
            return null;
        }
        return userBeans.get(0);
//        return null;
    }

    @Override
    public int register(UserBean userBean) {
        Session session = HibernateUtilEx.openSession();
        int num = (Integer) session.save(userBean);
        HibernateUtilEx.closeSession();
        return num;
    }

    public static void main(String[] args) {
        UserDaoImpl userDao = new UserDaoImpl();
//        UserBean login = userDao.login("123", "123");
        UserBean userBean = new UserBean();
        userBean.setUsername("king");
        userBean.setPassword("king");

        int register = userDao.register(userBean);
        System.out.println(register);

    }
}
