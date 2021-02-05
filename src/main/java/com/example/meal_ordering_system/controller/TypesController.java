package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.Types;
import com.example.meal_ordering_system.service.TypesService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

    /**
     * 查询所有菜单类别
     * @param model
     * @return
     */
    @RequestMapping("queryAll")
    public String queryAll(Model model){
        List<Types> types=typesService.queryAll();
        model.addAttribute("types",types);
        return "admin/type";
    }

    @RequestMapping("getall")
    public List<Types> queryall()
    {
        return this.typesService.queryAll();
    }

    /**
     * 通过id删除菜单类别
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("delete")
    public String delete(Model model,@Param("id") int id){
        this.typesService.delete(id);
        return queryAll(model);
    }

    /**
     * 修改菜单类别
     * @param model
     * @param id
     * @return
     */
    //函数入口
    @RequestMapping("update")
    public String update(Model model,@Param("id") int id,@Param("name") String name) {
        typesService.update(new Types(id,name));
        return queryAll(model);
    }

    /**
     * 根据id查询元素
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("queryById")
    public String queryById(Model model,@Param("id") int id){
        Types type=typesService.queryById(id);
        model.addAttribute("type",type);
        return "admin/type_update";
    }

    /**
     * 插入元素
     * @param model
     * @param name
     * @return
     */
    @RequestMapping("insert")
    public String insert(Model model,@Param("name") String name){
        int id=(int)(System.currentTimeMillis()%100);
        typesService.insert(new Types(id,name));
        return queryAll(model);
    }
}