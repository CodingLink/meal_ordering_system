package com.example.meal_ordering_system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShoppingCart {
    private Integer id;
    private String name;
    private float price;
    private  Integer sums;
}
