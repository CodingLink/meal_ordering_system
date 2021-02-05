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
     * 查询所有元素
     * @return
     */
    @Override
    public List<Types> queryAll() {
        return this.typesDao.queryAll();
    }
}