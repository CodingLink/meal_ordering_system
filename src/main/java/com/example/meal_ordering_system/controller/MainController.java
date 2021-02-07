package com.example.meal_ordering_system.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("admin")
    public String admin(Model model){
        return "/admin/main";
    }

    @RequestMapping("qiantai")
    public String qianTai(Model model){
        return "/qiantai/index";
    }


}
