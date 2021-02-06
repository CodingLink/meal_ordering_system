package com.example.meal_ordering_system.service.impl;

import com.example.meal_ordering_system.dao.AdminDao;
import com.example.meal_ordering_system.entity.Admin;
import com.example.meal_ordering_system.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Admin)表服务实现类
 *
 * @author makejava
 * @since 2021-02-04 12:49:13
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminDao adminDao;

    /**
     * 通过ID查询单条数据
     *
     * @param name 用户名
     * @return 实例对象
     */
    @Override
    public Admin queryByName(String name) {
        return this.adminDao.queryByName(name);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Admin> queryAllByLimit(int offset, int limit) {
        return this.adminDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param admin 实例对象
     * @return 实例对象
     */
    @Override
    public Admin insert(Admin admin) {
        this.adminDao.insert(admin);
        return admin;
    }
    @Override
     public int update(Admin admin){
        this.adminDao.update(admin);
        return 0;
    };

    //登录方法的实现,从jsp页面获取username与password
    public boolean login(String name, String pwd) {
        Admin admin = adminDao.queryByName(name);
        if (admin != null) {
            if (admin.getName().equals(name) && admin.getPwd().equals(pwd))
                return true;
        }
        return false;
    }


    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.adminDao.deleteById(id) > 0;
    }
}