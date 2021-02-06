package com.example.meal_ordering_system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users  {

    private Integer id;

    private String name;

    private String pwd;

    private String realname;

    private String sex;

    private Integer age;

    private String card;

    private String address;

    private String phone;

    private String email;

    private String code;

    private Integer type;


    public Users(String name, String pwd, String realname, String sex, Integer age, String card, String address, String phone, String email, String code, Integer type) {
        this.name = name;
        this.pwd = pwd;
        this.realname = realname;
        this.sex = sex;
        this.age = age;
        this.card = card;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.code = code;
        this.type = type;
    }
}