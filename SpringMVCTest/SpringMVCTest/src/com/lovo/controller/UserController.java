package com.lovo.controller;

import com.lovo.bean.AddressBean;
import com.lovo.bean.UserBean;
import com.lovo.service.AddressService;
import com.lovo.service.Impl.AddressServiceImpl;
import com.lovo.service.Impl.UserServiceImpl;
import com.lovo.service.UserService;
import com.lovo.vo.UserVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 用户页面控制器
 */
@Controller
public class UserController {
    private UserService userService = new UserServiceImpl();
    private AddressService as=new AddressServiceImpl();
    @RequestMapping("login")
    public String login(UserVo userVo, ModelMap modelMap) {
        UserBean user = userService.login(userVo.getUsername(),userVo.getPassword());
        if(user==null) {
            modelMap.addAttribute("login",null);
            return "login";
        }
        List<AddressBean> address = as.getAllAddress();
        modelMap.addAttribute("user",user);
        modelMap.addAttribute("address",address);
        return "address";
    }

    @RequestMapping("register")
    @ResponseBody
    public Boolean register(UserVo userVo) {
        System.out.println(userVo);
        UserServiceImpl userService = new UserServiceImpl();
        UserBean userBean = new UserBean();
        userBean.setUsername(userVo.getUsername());
        userBean.setPassword(userVo.getPassword());

        boolean register = userService.register(userBean);


        return true;
    }
    @RequestMapping("exit")
    public String exit(ModelMap modelMap){
        modelMap.addAttribute("user",null);
        return "login";
    }
}
