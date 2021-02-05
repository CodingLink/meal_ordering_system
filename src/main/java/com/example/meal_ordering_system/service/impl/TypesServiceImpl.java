package com.example.meal_ordering_system.service.impl;

import com.example.meal_ordering_system.dao.TypesDao;
import com.example.meal_ordering_system.entity.Types;
import com.example.meal_ordering_system.service.TypesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
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
     * 查询所有元素
     * @return
     */
    @Override
    public List<Types> queryAll() {
        return this.typesDao.queryAll();
    }

    /**
     * 修改菜单类别
     * @param type
     * @return
     */
    @Override
    public int update(Types type) {
        typesDao.update(type);
        return 0;
    }

    /**
     * 删除元素
     * @param id
     * @return
     */
    @Override
    public int delete(int id) {
        return typesDao.delete(id);
    }

    /**
     * 根据id查询
     * @param id
     * @return
     */
    @Override
    public Types queryById(int id) {
        return typesDao.queryById(id);
    }

    /**
     * 插入元素
     * @param type
     * @return
     */
    @Override
    public int insert(Types type) {
        return typesDao.insert(type);
    }

}