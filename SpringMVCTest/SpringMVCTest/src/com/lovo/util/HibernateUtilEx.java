package com.lovo.util;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HibernateUtilEx {

    private static SessionFactory sessionFactory = null;
    private static ThreadLocal<Session> sessionThreadLocal = new ThreadLocal<>();


    //    静态初始化块（只执行一次）
    static {
        try {
            //        加载hibernate配置(hibernate.cfg.cml)
            Configuration configuration = new Configuration().configure();
            //        创建SessionFactory工厂实例
            sessionFactory = configuration.buildSessionFactory();

        } catch (HibernateException e) {
            System.out.println("Hibernate配置文件加载失败");
            e.printStackTrace();
        }
    }


    public static Session openSession() {
//        从当前执行的线程中获取ThreadLocal中保存的sessiond对象实例
        Session session = sessionThreadLocal.get();
        if (session == null) {
            session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
//            将创建的session对象实例保存到ThreadLocal中
            sessionThreadLocal.set(session);
        }
        return session;
    }


    public static void closeSession() {
        //        从当前执行的线程中获取ThreadLocal中保存的sessiond对象实例
        Session session = sessionThreadLocal.get();
        if (session != null) {
            Transaction transaction = session.getTransaction();
            transaction.commit();
            session.close();
//         清楚当前线程 ThreadLocal中保存的session对象实例
            sessionThreadLocal.set(null);
        }
    }

}
