package com.example.meal_ordering_system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@NoArgsConstructor
@AllArgsConstructor
public class Menus  {

    private Integer id;

    private String name;

    private Integer typeid;

    private String burden;

    private String brief;

    private Float price;

    private Integer sums;

    private Float price1;

    private Integer sums1;

    private String imgpath;



}