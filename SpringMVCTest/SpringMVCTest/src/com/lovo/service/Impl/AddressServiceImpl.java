package com.lovo.service.Impl;

import com.lovo.bean.AddressBean;
import com.lovo.dao.AddressDao;
import com.lovo.dao.Impl.AddressDaoImpl;
import com.lovo.service.AddressService;
import com.lovo.vo.AddressVo;

import java.util.List;

public class AddressServiceImpl implements AddressService {
    private AddressDao ad=new AddressDaoImpl();
    @Override
    public List<AddressBean> getAllAddress() {
        return ad.getAllAddress();
    }

    @Override
    public int deleteAddress(int id) {
        int i = ad.deleteAddress(id);
        return i;
    }

    @Override
    public AddressBean getById(int id) {
        AddressBean byId = ad.getById(id);
        return byId;
    }

    @Override
    public int insertAddress(AddressBean ab) {
        int i = ad.insertAddress(ab);
        return i;
    }

    @Override
    public int modifyAddress(AddressBean ab) {
        int i = ad.modifyAddress(ab);
        return i;
    }
}
