package com.lovo.dao.Impl;

import com.lovo.bean.AddressBean;
import com.lovo.dao.AddressDao;
import com.lovo.util.HibernateUtilEx;
import com.lovo.vo.AddressVo;
import org.hibernate.Session;

import java.io.Serializable;
import java.util.List;

public class AddressDaoImpl implements AddressDao {
    @Override
    public List<AddressBean> getAllAddress() {
        Session session = HibernateUtilEx.openSession();
        List<AddressBean> addressBeans=session.createQuery("from AddressBean").list();
        HibernateUtilEx.closeSession();
        return addressBeans;
    }

    @Override
    public int deleteAddress(int id) {
        Session session = HibernateUtilEx.openSession();
        List<AddressBean> addressBeans=session.createQuery("from AddressBean as a where a.id=:id")
                .setInteger("id",id).list();
        AddressBean addressBean=addressBeans.get(0);
        session.delete(addressBean);
        HibernateUtilEx.closeSession();
        return 1;
    }

    @Override
    public AddressBean getById(int id) {
        Session session = HibernateUtilEx.openSession();
        List<AddressBean> addressBeans=session.createQuery("from AddressBean as a where a.id=:id").setInteger("id",id).list();
        HibernateUtilEx.closeSession();
        return addressBeans.get(0);
    }

    @Override
    public int insertAddress(AddressBean ab) {
        Session session = HibernateUtilEx.openSession();
        AddressBean a=new AddressBean();

        a.setUsername(ab.getUsername());
        a.setName(ab.getName());
        a.setAddress(ab.getAddress());
        a.setCompany(ab.getCompany());
        a.setEmail(ab.getEmail());
        a.setMobile(ab.getMobile());
        a.setQq(ab.getQq());
        a.setPostcode(ab.getPostcode());
        a.setSex(ab.getSex());

        session.persist(a);
        HibernateUtilEx.closeSession();
        return 1;
    }

    @Override
    public int modifyAddress(AddressBean ab) {
        Session session = HibernateUtilEx.openSession();
        List<AddressBean> addressBeans=session.createQuery("from AddressBean as a where a.id=:id").setInteger("id",ab.getId()).list();
        AddressBean addressBean=addressBeans.get(0);

        addressBean.setSex(ab.getSex());
        addressBean.setPostcode(ab.getPostcode());
        addressBean.setQq(ab.getQq());
        addressBean.setMobile(ab.getMobile());
        addressBean.setCompany(ab.getCompany());
        addressBean.setAddress(ab.getAddress());
        addressBean.setName(ab.getName());
        addressBean.setUsername(ab.getUsername());

        Serializable save = session.save(addressBean);
        HibernateUtilEx.closeSession();
        return (Integer)save;
    }

    public static void main(String[] args) {
        Session session = HibernateUtilEx.openSession();
        AddressBean ab=new AddressBean();
        ab.setName("hdhh");
        ab.setAddress("djhjdb");
        ab.setUsername("dhjj");
        Serializable save = session.save(ab);
        HibernateUtilEx.closeSession();
    }
}
