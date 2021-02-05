package com.example.meal_ordering_system.dao;

import com.example.meal_ordering_system.entity.Types;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (Types)表数据库访问层
 *
 * @author makejava
 * @since 2021-02-04 12:44:08
 */
@Repository
public interface TypesDao {
    /**
     * 通过实体作为筛选条件查询
     *
     * @return 对象列表
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
     * @param types
     * @return
     */
    int insert(Types types);
}