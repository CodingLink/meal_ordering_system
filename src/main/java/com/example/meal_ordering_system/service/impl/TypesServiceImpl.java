package com.example.meal_ordering_system.service.impl;

import com.example.meal_ordering_system.dao.TypesDao;
import com.example.meal_ordering_system.entity.Types;
import com.example.meal_ordering_system.service.TypesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Types)表服务实现类
 *
 * @author makejava
 * @since 2021-02-04 12:49:15
 */
@Service("typesService")
public class TypesServiceImpl implements TypesService {

    @Autowired
    @Qualifier("typesDao")
    private TypesDao typesDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Types queryById(Integer id) {
        return this.typesDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Types> queryAllByLimit(int offset, int limit) {
        return this.typesDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param types 实例对象
     * @return 实例对象
     */
    @Override
    public Types insert(Types types) {
        this.typesDao.insert(types);
        return types;
    }

    /**
     * 修改数据
     *
     * @param types 实例对象
     * @return 实例对象
     */
    @Override
    public Types update(Types types) {
        this.typesDao.update(types);
        return this.queryById(types.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.typesDao.deleteById(id) > 0;
    }

    /**
     * 查询所有元素
     * @return
     */
    @Override
    public List<Types> queryAll() {
        return this.typesDao.queryAll();
    }
}