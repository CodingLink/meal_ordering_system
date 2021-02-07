package com.example.meal_ordering_system.service;

import com.example.meal_ordering_system.entity.Menus;

import java.util.List;

/**
 * (Menus)表服务接口
 *
 * @author makejava
 * @since 2021-02-04 12:49:14
 */
public interface MenusService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Menus queryById(Object id);


    List<Menus> queryAll();

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Menus> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param menus 实例对象
     * @return 实例对象
     */
    Menus insert(Menus menus);

    /**
     * 修改数据
     *
     * @param menus 实例对象
     * @return 实例对象
     */
    Menus update(Menus menus);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Object id);

}