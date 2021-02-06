package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Users;
import com.example.meal_ordering_system.service.UsersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * (Users)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:21
 */
@Controller
@RequestMapping("users")
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
     * 登录查询
     * @param name
     * @return
     */
    public boolean login(String name,String pwd){
        Users user= usersService.queryOne(name,pwd);
        if(user==null)
            return false;
        else
            return true;
    }


}