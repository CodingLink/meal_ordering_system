package com.example.meal_ordering_system.service;

import com.example.meal_ordering_system.entity.Notice;

import java.util.List;

/**
 * (Notice)表服务接口
 *
 * @author makejava
 * @since 2021-02-04 12:49:14
 */
public interface NoticeService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Notice queryById(Integer id);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<Notice> queryAll();

    /**
     * 新增数据
     *
     * @param notice 实例对象
     * @return 实例对象
     */
    Notice insert(Notice notice);

    /**
     * 修改数据
     *
     * @param notice 实例对象
     * @return 实例对象
     */
    Notice update(Notice notice);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean delete(Integer id);

}