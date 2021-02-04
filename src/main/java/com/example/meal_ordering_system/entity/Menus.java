package com.example.meal_ordering_system.entity;

import java.io.Serializable;

/**
 * (Menus)实体类
 *
 * @author makejava
 * @since 2021-02-04 12:05:56
 */
public class Menus implements Serializable {

    private Object id;

    private String name;

    private Object typeid;

    private String burden;

    private String brief;

    private Object price;

    private Object sums;

    private Object price1;

    private Object sums1;

    private String imgpath;


    public Object getId() {
        return id;
    }

    public void setId(Object id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Object getTypeid() {
        return typeid;
    }

    public void setTypeid(Object typeid) {
        this.typeid = typeid;
    }

    public String getBurden() {
        return burden;
    }

    public void setBurden(String burden) {
        this.burden = burden;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public Object getPrice() {
        return price;
    }

    public void setPrice(Object price) {
        this.price = price;
    }

    public Object getSums() {
        return sums;
    }

    public void setSums(Object sums) {
        this.sums = sums;
    }

    public Object getPrice1() {
        return price1;
    }

    public void setPrice1(Object price1) {
        this.price1 = price1;
    }

    public Object getSums1() {
        return sums1;
    }

    public void setSums1(Object sums1) {
        this.sums1 = sums1;
    }

    public String getImgpath() {
        return imgpath;
    }

    public void setImgpath(String imgpath) {
        this.imgpath = imgpath;
    }

}