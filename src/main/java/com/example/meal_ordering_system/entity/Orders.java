package com.example.meal_ordering_system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Orders  {

    private Integer id;

    private Integer userid;

    private Integer menuid;

    private Integer menusum;

    private String times;

    private Integer delivery;

    private Users users;

    private Menus menus;

    public Orders(Integer id, Integer userid, Integer menuid, Integer menusum, String times, Integer delivery) {
        this.id = id;
        this.userid = userid;
        this.menuid = menuid;
        this.menusum = menusum;
        this.times = times;
        this.delivery = delivery;
    }
}