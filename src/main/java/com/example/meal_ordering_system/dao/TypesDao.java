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

}