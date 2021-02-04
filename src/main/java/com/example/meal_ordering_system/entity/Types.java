package com.example.meal_ordering_system.entity;

import java.io.Serializable;

/**
 * (Types)实体类
 *
 * @author makejava
 * @since 2021-02-04 12:05:57
 */
public class Types implements Serializable {

    private Integer id;

    private String name;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}