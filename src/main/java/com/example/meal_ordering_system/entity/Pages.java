package com.example.meal_ordering_system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pages implements Serializable {
    private static final long serialVersionUID=1L;
    private String currentpage="1";      //当前也是

    private int totalPageCount=1;      //总页数
}
