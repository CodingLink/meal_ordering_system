package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Menus;
import com.example.meal_ordering_system.service.MenusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;


/**
 * (Menus)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:20
 */
@Controller
@RequestMapping("menus")
public class MenusController {
    /**
     * 服务对象
     */
    @Autowired
    @Qualifier("menusService")
    private MenusService menusService;

    @RequestMapping("/update")
    public ModelAndView update(){
        ModelAndView modelAndView = new ModelAndView("/admin/menus_add");
        return modelAndView;
    }


    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Menus selectOne(Object id) {
        return this.menusService.queryById(id);
    }

}