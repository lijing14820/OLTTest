package com.lovo.service;

import com.lovo.bean.AddressBean;
import com.lovo.vo.AddressVo;

import java.util.List;

public interface AddressService {
    public List<AddressBean> getAllAddress();
    public int deleteAddress(int id);
    public AddressBean getById(int id);
    public  int insertAddress(AddressBean ab);
    public int modifyAddress(AddressBean ab);
}
