package com.example.meal_ordering_system.service.impl;

import com.example.meal_ordering_system.dao.OrdersDao;
import com.example.meal_ordering_system.entity.Orders;
import com.example.meal_ordering_system.entity.Pages;
import com.example.meal_ordering_system.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import java.util.List;

/**
 * (Orders)表服务实现类
 *
 * @author makejava
 * @since 2021-02-04 12:49:15
 */
@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    @Qualifier("ordersDao")
    private OrdersDao ordersDao;


    private Pages pages;


    @Override
    public List<Orders> pageList(int a,int b){
        return  this.ordersDao.pageList(a,b);
    }



    @Override
    public int pageCount() {
        return this.ordersDao.pageCount();
    }

    @Override
    public int updatedeliveryById(Integer id) {
        return this.ordersDao.updatedeliveryById(id);
    }

    @Override
    public int deleteById(Integer id) {
        return this.ordersDao.deleteById(id);
    }

    @Override
    public List<Orders> pageListByID(int id) {
        return this.ordersDao.pageListByID(id);
    }

    @Override
    public List<Orders> pageListByDate(String times1,String times2) {
        return this.ordersDao.pageListByDate(times1,times2);
    }

    @Override
    public List<Orders> pageListByMenue(String name) {
        return this.ordersDao.pageListByMenue(name);
    }

    @Override
    public List<Orders> pageListByDelivery(Integer delivery) {
        return this.ordersDao.pageListByDelivery(delivery);
    }

    @Override
    public int insert(Orders orders) {
        return this.ordersDao.insert(orders);
    }

}