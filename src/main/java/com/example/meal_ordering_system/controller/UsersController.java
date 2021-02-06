package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Users;
import com.example.meal_ordering_system.service.UsersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;
import java.util.UUID;

/**
 * (Users)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:21
 */
@Controller("usersController")
@RequestMapping("users")
@Scope("prototype")
public class UsersController {
    /**
     * 服务对象
     */
    @Autowired
    @Qualifier("usersService")
    private UsersService usersService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @RequestMapping ("queryById")
    public Users queryById(Integer id) {
        return this.usersService.queryById(id);
    }


    /**
     * 登录方法
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("login")
    public String login(Users user, HttpServletRequest request){
        boolean loginType=usersService.login(user.getName(), user.getPwd());
        if(loginType){
            request.setAttribute("user",user);
            return "qiantai/index";
        }else{
            request.setAttribute("message","用户名密码错误");
            return "qiantai/userLoginFail";
        }
    }

    @RequestMapping("insert")
    public String insert(@Param("name") String name,@Param("pwd") String pwd,@Param("realname") String realname,@Param("sex") String sex,@Param("age") Integer age,@Param("card") String card,@Param("address") String address,@Param("Phone") String phone,@Param("email")String email,@Param("code")String code,@Param("type")Integer type){
        Users user=new Users(name,pwd,realname,sex,age,card,address,phone,email,code,type);
        usersService.insert(user);
        return "redirect:../public/qiantai/login.jsp";
    }


}