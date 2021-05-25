package com.lovo.controller;

import com.lovo.bean.AddressBean;
import com.lovo.service.AddressService;
import com.lovo.service.Impl.AddressServiceImpl;
import com.lovo.vo.AddressVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AddressController {
    private AddressService as=new AddressServiceImpl();
    @RequestMapping("delete")
    @ResponseBody
    public int deleteAddress(AddressVo av){
        int i = as.deleteAddress(av.getId());
        return i;
    }
    @RequestMapping("modify")
    @ResponseBody
    public AddressBean modifyAddress(AddressVo av){
        AddressBean byId = as.getById(av.getId());
        return byId;
    }
    @RequestMapping("add")
    public String insertAddress(AddressBean ab){
        System.out.println(ab);
        int i = as.insertAddress(ab);
        return "address";
    }
    @RequestMapping("modify1")
    @ResponseBody
    public String changeAddress(AddressBean ab){
        int i = as.modifyAddress(ab);
        if(i>0) {
            return "ok";
        }
        return "no";
    }
}
