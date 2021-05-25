package com.lovo.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static SessionFactory sessionFactory=null;
    //静态初始化块，只执行一次
    static {
        try {
            Configuration configuration = new Configuration().configure();
            sessionFactory = configuration.buildSessionFactory();
        }catch (HibernateException e){
            System.out.println("Hibernate配置文件加载失败");
            e.printStackTrace();
        }
    }
    public static Session openSession(){
        Session session = sessionFactory.openSession();
        return session;
    }
    public static void closeSession(Session session){
        if(session!=null){
            session.close();
        }
    }

}
