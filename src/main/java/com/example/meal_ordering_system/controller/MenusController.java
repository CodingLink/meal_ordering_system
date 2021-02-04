package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Menus;
import com.example.meal_ordering_system.service.MenusService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * (Menus)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:20
 */
@RestController
@RequestMapping("menus")
public class MenusController {
    /**
     * 服务对象
     */
    @Resource
    private MenusService menusService;

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