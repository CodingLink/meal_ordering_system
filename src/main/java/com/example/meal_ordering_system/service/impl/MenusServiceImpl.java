package com.example.meal_ordering_system.service.impl;

import com.example.meal_ordering_system.dao.MenusDao;
import com.example.meal_ordering_system.entity.Menus;
import com.example.meal_ordering_system.service.MenusService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Menus)表服务实现类
 *
 * @author makejava
 * @since 2021-02-04 12:49:14
 */
@Service("menusService")
public class MenusServiceImpl implements MenusService {
    @Resource
    @Qualifier
    private MenusDao menusDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Menus queryById(Object id) {
        return this.menusDao.queryById(id);
    }



    public List<Menus> queryAll( ){
        return  this.menusDao.queryAll();
    };

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Menus> queryAllByLimit(int offset, int limit) {
        return this.menusDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param menus 实例对象
     * @return 实例对象
     */
    @Override
    public Menus insert(Menus menus) {
        this.menusDao.insert(menus);
        return menus;
    }

    /**
     * 修改数据
     *
     * @param menus 实例对象
     * @return 实例对象
     */
    @Override
    public Menus update(Menus menus) {
        this.menusDao.update(menus);
        return this.queryById(menus.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Object id) {
        return this.menusDao.deleteById(id) > 0;
    }
}