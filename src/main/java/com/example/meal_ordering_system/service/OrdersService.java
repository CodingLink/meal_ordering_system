package com.example.meal_ordering_system.service;

import com.example.meal_ordering_system.entity.Orders;

import java.util.List;

/**
 * (Orders)表服务接口
 *
 * @author makejava
 * @since 2021-02-04 12:49:14
 */
public interface OrdersService {

    //分页查询销售订单信息
    List<Orders> pageList(int a,int b);

    //返回页面个数
    int pageCount();

    //更新delivery
    int updatedeliveryById(Integer id);

    //删除订单
    int deleteById(Integer id);

    //查询全部订单通过id
    List<Orders> pageListByID(int id);

    //查询全部订单通过日期
    List<Orders> pageListByDate(String times1,String times2);

    //查询全部订单通过menu
    List<Orders> pageListByMenue(String name);


    //查找所有订单通过delivery
    List<Orders> pageListByDelivery(Integer delivery);

    //增加order
    int insert(Orders orders);
}