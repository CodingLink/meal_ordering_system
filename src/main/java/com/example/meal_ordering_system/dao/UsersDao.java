package com.example.meal_ordering_system.dao;

import com.example.meal_ordering_system.entity.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (Users)表数据库访问层
 *
 * @author makejava
 * @since 2021-02-04 12:44:08
 */
@Repository("usersDao")
public interface UsersDao {

    /**
     * 登录查询
     *
     * @param name 用户名
     * @return 实例对象
     */
    Users queryOne(@Param("name") String name, @Param("pwd") String pwd);

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
     * @return 影响行数
     */
    int insert(Users user);



    /**
     * 修改数据
     *
     * @param users 实例对象
     * @return 影响行数
     */
    int update(Users users);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    //通过用户名查id
   int queryByname(String name);

}