package com.example.meal_ordering_system.service;

import com.example.meal_ordering_system.entity.Admin;
import com.example.meal_ordering_system.entity.Types;

import java.util.List;

/**
 * (Admin)表服务接口
 *
 * @author makejava
 * @since 2021-02-04 12:49:13
 */
public interface AdminService {

    /**
     * 通过ID查询单条数据
     *
     * @param name 主键
     * @return 实例对象
     */
     Admin queryByName(String name) ;

     boolean login(String name,String pwd);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Admin> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param admin 实例对象
     * @return 实例对象
     */
    Admin insert(Admin admin);

    int update(Admin admin);


    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}