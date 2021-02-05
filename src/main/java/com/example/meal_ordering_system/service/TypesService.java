package com.example.meal_ordering_system.service;

import com.example.meal_ordering_system.entity.Types;

import java.util.List;

/**
 * (Types)表服务接口
 *
 * @author makejava
 * @since 2021-02-04 12:49:15
 */
public interface TypesService {


    /**
     * 查询所有元素
     * @return
     */
    List<Types> queryAll();

}