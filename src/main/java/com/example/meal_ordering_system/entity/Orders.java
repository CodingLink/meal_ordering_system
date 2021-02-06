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



}