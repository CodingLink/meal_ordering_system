package com.example.meal_ordering_system.service;

import com.example.meal_ordering_system.entity.Types;

import java.lang.reflect.Type;
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

    /**
     * 修改菜单类别
     * @param type
     * @return
     */
    int update(Types type);

    /**
     * 删除菜单类别
     * @param id
     * @return
     */
    int delete(int id);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    Types queryById(int id);

    /**
     * 插入元素
     * @param type
     * @return
     */
    int insert(Types type);

}