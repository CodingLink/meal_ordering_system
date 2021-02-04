package com.example.meal_ordering_system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Orders  {

    private Integer id;

    private Object userid;

    private Object menuid;

    private Object menusum;

    private String times;

    private Object delivery;



}