package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Types;
import com.example.meal_ordering_system.service.TypesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Types)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:21
 */
@Controller
@RequestMapping("types")
public class TypesController {
    /**
     * 服务对象
     */
    @Autowired
    @Qualifier("typesService")
    private TypesService typesService;

    @RequestMapping("queryAll")
    public String queryAll(Model model){
        List<Types> types=typesService.queryAll();
        model.addAttribute("types",types);
        return "admin/type";
    }
    @RequestMapping("test")
    public String testTypes(){
        return "admin/type";
    }
}