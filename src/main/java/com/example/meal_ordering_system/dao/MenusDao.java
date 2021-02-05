package com.example.meal_ordering_system.dao;

import com.example.meal_ordering_system.entity.Menus;
import com.example.meal_ordering_system.entity.Page;
import org.apache.ibatis.annotations.Param;



import java.util.List;

/**
 * (Menus)表数据库访问层
 *
 * @author makejava
 * @since 2021-02-04 12:44:07
 */
public interface MenusDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Menus queryById(Object id);

    List<Menus> selectAll(Page page);

     long selectCount();

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Menus> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param menus 实例对象
     * @return 对象列表
     */
    List<Menus> queryAll(Menus menus);

    /**
     * 新增数据
     *
     * @param menus 实例对象
     * @return 影响行数
     */
    int insert(Menus menus);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Menus> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Menus> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Menus> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Menus> entities);

    /**
     * 修改数据
     *
     * @param menus 实例对象
     * @return 影响行数
     */
    int update(Menus menus);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Object id);

}