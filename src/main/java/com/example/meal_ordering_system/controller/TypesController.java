package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Types;
import com.example.meal_ordering_system.service.TypesService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * (Types)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:21
 */
@Controller
@RequestMapping("types")
public class TypesController {
    /**
     * 服务对象
     */
    @Resource
    private TypesService typesService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Types selectOne(Integer id) {
        return this.typesService.queryById(id);
    }

}