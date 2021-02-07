package com.example.meal_ordering_system.dao;

import com.example.meal_ordering_system.entity.Orders;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (Orders)表数据库访问层
 *
 * @author makejava
 * @since 2021-02-04 12:44:08
 */
@Repository("ordersDao")
public interface OrdersDao {

    //获取全部订单
    List<Orders> pageList(int a,int b);

    //获取全部行数
    int pageCount();

    //查询全部订单通过id
    List<Orders> pageListByID(int id);

    //查询全部订单通过日期
    List<Orders> pageListByDate(String times1,String times2);

    //查询全部订单通过menu
    List<Orders> pageListByMenue(String name);

    //更新delivery
    int updatedeliveryById(Integer id);

    //删除订单
    int deleteById(Integer id);

    //查找所有订单通过delivery
    List<Orders> pageListByDelivery(Integer delivery);


    //增加order
    int insert(Orders orders);
}