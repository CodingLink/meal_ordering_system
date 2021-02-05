package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Menus;
import com.example.meal_ordering_system.entity.Types;
import com.example.meal_ordering_system.service.MenusService;
import com.example.meal_ordering_system.service.TypesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;


/**
 * (Menus)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:20
 */
@Controller
@RequestMapping("menus")
public class MenusController {
    /**
     * 服务对象
     */
    @Autowired
    @Qualifier("menusService")
    private MenusService menusService;
    @Autowired
    @Qualifier("typesService")
    private TypesService typesService;

    @RequestMapping("/add")
    public ModelAndView add(){
        ModelAndView modelAndView = new ModelAndView("/admin/menus_add");
        List<Types> typesList=typesService.queryAll();
        modelAndView.addObject("typesList",typesList);
        return modelAndView;
    }
//    查询全部菜单,并且返回到菜单信息页面
    @RequestMapping("/allMenus")
    public String  list(Model model ){
        List<Menus> list = menusService.queryAllByLimit(1, 5);
        model.addAttribute("list",list);
        return "/admin/menus";
    }
// 插入一个菜单信息到数据库
    @RequestMapping("/insert")
    public String  insert(Menus menus){
        System.out.println("insertBook"+menus);
        menusService.insert(menus);
        return "/admin/menus_add";
    }

    @RequestMapping("/update")
        public ModelAndView update( ){
            ModelAndView modelAndView =new ModelAndView("/admin/menus_update");
            return modelAndView;
        }



    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Menus selectOne(Object id) {
        return this.menusService.queryById(id);
    }

}