package com.example.meal_ordering_system.entity;

import java.io.Serializable;

/**
 * (Orders)实体类
 *
 * @author makejava
 * @since 2021-02-04 12:05:57
 */
public class Orders implements Serializable {

    private Integer id;

    private Object userid;

    private Object menuid;

    private Object menusum;

    private String times;

    private Object delivery;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Object getUserid() {
        return userid;
    }

    public void setUserid(Object userid) {
        this.userid = userid;
    }

    public Object getMenuid() {
        return menuid;
    }

    public void setMenuid(Object menuid) {
        this.menuid = menuid;
    }

    public Object getMenusum() {
        return menusum;
    }

    public void setMenusum(Object menusum) {
        this.menusum = menusum;
    }

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times;
    }

    public Object getDelivery() {
        return delivery;
    }

    public void setDelivery(Object delivery) {
        this.delivery = delivery;
    }

}