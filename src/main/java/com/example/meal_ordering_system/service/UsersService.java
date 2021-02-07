package com.example.meal_ordering_system.service;

import com.example.meal_ordering_system.entity.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Users)表服务接口
 *
 * @author makejava
 * @since 2021-02-04 12:49:15
 */
public interface UsersService {

    /**
     * 登录查询
     *
     * @param name 用户名
     * @param pwd 密码
     * @return 实例对象
     */
    boolean login(@Param("name") String name, @Param("pwd") String pwd);

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Users queryById(Integer id);




    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 改变行数
     */
    int insert(Users user);

    /**
     * 修改数据
     *
     * @param users 实例对象
     * @return 实例对象
     */
    Users update(Users users);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    //通过用户名查id
    int queryByname(String name);

}