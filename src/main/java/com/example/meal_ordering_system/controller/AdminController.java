package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Admin;
import com.example.meal_ordering_system.entity.Menus;
import com.example.meal_ordering_system.entity.Types;
import com.example.meal_ordering_system.service.AdminService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * (Admin)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:19
 */
@Controller
@RequestMapping("admin")
public class AdminController {
    /**
     * 服务对象
     */
    //自动注入业务层的AdminService类
    @Autowired
    @Qualifier("adminService")
    private AdminService adminService;

    //修改管理员信息
    @RequestMapping("update")
    public String update(Admin admin) {
        adminService.update(admin);
        return "/admin/menus";
    }


    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String toLogin(){
        return  "/admin/index";
    }

    //login业务的访问位置为/admin/login
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Admin admin, HttpServletRequest request,HttpSession session){
        //调用login方法来验证是否是注册用户
        boolean loginType = adminService.login(admin.getName(),admin.getPwd());
        if(loginType){
            //如果验证通过,则将用户信息传到前台
            request.setAttribute("admin",admin);
            session.setAttribute("admin_session",admin);
            //并跳转到success.jsp页面
            return "/admin/main";
        }else{
            //若不对,则返回
            request.setAttribute("message","用户名密码错误");
            return "/admin/index";
        }
    }

    //登出,地址/admin/logout
    @RequestMapping("logout")
    public String logout(HttpSession session){
        //清除session
        session.removeAttribute("admin_session");
        //重定向到登录页面的跳转方法
        return "/admin/index";
    }



}