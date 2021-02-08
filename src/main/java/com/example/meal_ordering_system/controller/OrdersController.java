package com.example.meal_ordering_system.controller;

import com.example.meal_ordering_system.entity.*;
import com.example.meal_ordering_system.service.MenusService;
import com.example.meal_ordering_system.service.OrdersService;
import com.example.meal_ordering_system.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (Orders)表控制层
 *
 * @author makejava
 * @since 2021-02-04 12:51:20
 */
@Controller
@RequestMapping("orders")
public class OrdersController {
    /**
     * 服务对象
     */
    @Autowired
    @Qualifier("ordersService")
    private OrdersService ordersService;

    @Autowired
    @Qualifier("menusService")
    private MenusService menusService;

    @Autowired
    @Qualifier("usersService")
      private UsersService usersService;

    //获取全部订单信息
    @RequestMapping("ordergetall")
    public String ordergetall( HttpServletRequest request) {
        //传给前端
        Pages page1=null;
        //总页面
        Integer totalCount=null;

        //当前页面
        String currentpages="1";

        //获取上一页还是下一页标识
        String s="";

        //数据库操作页面
        String pagess="1";

        //前端页面总数
        Integer allpage=null;

        //如果不为空则获取currentpage
        if(request.getParameter("currentpage")!=null){
            currentpages=request.getParameter("currentpage");
            totalCount= ordersService.pageCount();
            allpage=totalCount/5;
            if(totalCount%5!=0){
                allpage++;
            }
            if(Integer.parseInt(currentpages)<=0){
                currentpages="1";
            }
            if(Integer.parseInt(currentpages)>allpage){
                currentpages=""+allpage;
            }


            //设置pagess的值
            if(request.getParameter("s")!=null){
                s=request.getParameter("s");
                if(s.equals("up")){
                    pagess=""+(Integer.parseInt(currentpages)-4);
                }else if(s.equals("down")){
                    pagess=""+((Integer.parseInt(currentpages)-1)*5-1);
                }else if (s.equals("first")){
                    pagess="0";
                }else if(s.equals("last")){
                    pagess=""+(totalCount-(totalCount%5)-1);
                }else {
                    System.out.println("错误");
                }
            }

            page1=new Pages(currentpages,allpage);
            request.setAttribute("pages",page1);

        }else{
            totalCount= ordersService.pageCount();
            allpage=totalCount/5;
            if(ordersService.pageCount()%5!=0){
                allpage++;
            }
            page1=new Pages("1", allpage);

            request.setAttribute("pages",page1);
        }

        //判断操作数据库页面是否突破限制
        if(Integer.parseInt(pagess)<=0){
            pagess="0";
        }
        if(Integer.parseInt(pagess)>totalCount){
            pagess=""+(totalCount-(totalCount%5)-1);
        }


        List<Orders> list= ordersService.pageList(Integer.parseInt(pagess),5);
        request.setAttribute("list",list);

        System.out.println("pagess="+pagess);
        System.out.println("currentpages="+currentpages);

        return "/admin/order";
    }

    //确认订单 确认则将deliverys设置为一否则删除
    @RequestMapping("OrderComfirm")
    public String OrderComfirm( HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        String reqtype=request.getParameter("reqtype");
        if(reqtype.equals("delivery")){
            ordersService.updatedeliveryById(id);
        }else if(reqtype.equals("del")){
            ordersService.deleteById(id);
        }else{
            System.out.println("错误");
        }

        return "redirect:/orders/ordergetall";
    }


    @RequestMapping("order_search")
    public String order_search( HttpServletRequest request) {
        return "/admin/order_search";
    }



    @RequestMapping("ordergetallbydelivery")
    public  String ordergetallbydelivery(HttpServletRequest request){
        String delivery=request.getParameter("delivery");
        Integer d=Integer.parseInt(delivery);
        List<Orders> list=ordersService.pageListByDelivery(d);
        HttpSession session=request.getSession();
        session.setAttribute("ordersearch", list);
        return "/qiantai/order";
    }

    @RequestMapping(value="order_qiantai",method = RequestMethod.POST)
    public String  order_qiantai( HttpServletRequest request) throws UnsupportedEncodingException {
        List<Orders> list=null;
        HttpSession session=request.getSession();
        request.setCharacterEncoding("utf-8");
        Integer id=null;
        String menuname=null;
        String day1=null;
        if(request.getParameter("menuname")!=null&&(!request.getParameter("menuname").equals(""))){
            menuname=request.getParameter("menuname");
            list=ordersService.pageListByMenue(menuname);
        }else if(request.getParameter("date")!=null&&(!request.getParameter("date").equals(""))){
            day1=request.getParameter("date");
            Integer a=Integer.parseInt(day1.substring(9,10));
            String aa=""+(a+1);
            StringBuilder day=new StringBuilder(day1);
            day.replace(9,10,aa);
            String day2=day.toString();
            list=ordersService.pageListByDate(day1,day2);
        }else {
            System.out.println("未提交");
        }


        session.setAttribute("ordersearch", list);
        System.out.println(id);
        System.out.println(menuname);
        System.out.println(day1);

        return "/qiantai/order";


    }


    @RequestMapping(value="order_searchs",method = RequestMethod.POST)
    public String order_searchs( HttpServletRequest request) throws UnsupportedEncodingException {

        List<Orders> list=null;
        HttpSession session=request.getSession();
        request.setCharacterEncoding("utf-8");
        Integer id=null;
        String menuname=null;
        String day1=null;
        if(request.getParameter("userid")!=null&&(!request.getParameter("userid").equals(""))){
            id=Integer.parseInt(request.getParameter("userid"));
            list=ordersService.pageListByID(id);
        }else if(request.getParameter("menuname")!=null&&(!request.getParameter("menuname").equals(""))){
            menuname=request.getParameter("menuname");
            list=ordersService.pageListByMenue(menuname);
        }else if(request.getParameter("date")!=null&&(!request.getParameter("date").equals(""))){
            day1=request.getParameter("date");
            Integer a=Integer.parseInt(day1.substring(9,10));
            String aa=""+(a+1);
            StringBuilder day=new StringBuilder(day1);
            day.replace(9,10,aa);
            String day2=day.toString();
            list=ordersService.pageListByDate(day1,day2);
        }else {
            System.out.println("未提交");
        }


        session.setAttribute("ordersearch", list);
        System.out.println(id);
        System.out.println(menuname);
        System.out.println(day1);

        return "/admin/order_search";
    }

    //跳转到statistic页面
    @RequestMapping("order_statistic")
    public String order_statistic( HttpServletRequest request) throws UnsupportedEncodingException {
        List<Orders> list=null;
        HttpSession session=request.getSession();
        request.setCharacterEncoding("utf-8");

        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date(System.currentTimeMillis());
        String day1=formatter.format(date);
        Integer a=Integer.parseInt(day1.substring(9,10));
        String aa=""+(a+1);
        StringBuilder day=new StringBuilder(day1);
        day.replace(9,10,aa);
        String day2=day.toString();

        System.out.println(a);
        System.out.println(day1);
        System.out.println(day2);
        list=ordersService.pageListByDate(day1,day2);

        session.setAttribute("orderstatistic", list);

        return "/admin/order_statistic";

    }

    @RequestMapping("orderqiantai")
    public String orderqiantai( HttpServletRequest request){
        return "/qiantai/order";
    }


    //放入购物车
    @RequestMapping("order_addshoppingcar")
    public String order_addshoppingcar(HttpServletRequest request){
        HttpSession session=request.getSession();

        String menuId = request.getParameter("menuId");
        Integer id=Integer.parseInt(menuId);
        Integer sum=(Integer) session.getAttribute("sum");
        if(sum==null){
            sum=1;
            session.setAttribute("sum",sum);
        }
        Menus menus = menusService.queryById(id);
        String name=menus.getName();
        float price=menus.getPrice1();

        ShoppingCart shoppingCart1=new ShoppingCart(id,name,price,sum);
        List<ShoppingCart> shoppingCarts=new ArrayList();
        if(session.getAttribute("shoppingcar")!=null){
            shoppingCarts=(List<ShoppingCart>)session.getAttribute("shoppingcar");
            for (ShoppingCart shoppingCart:shoppingCarts) {
                if(name.equals(shoppingCart.getName())){
                    sum=shoppingCart.getSums()+1;
                    shoppingCarts.remove(shoppingCart);
                    break;
                }
            }
            shoppingCart1=new ShoppingCart(id,name,price,sum);
            shoppingCarts.add(shoppingCart1);
            session.setAttribute("shoppingcar",shoppingCarts);
        }else{
            shoppingCart1=new ShoppingCart(id,name,price,sum);
            shoppingCarts.add(shoppingCart1);
            session.setAttribute("shoppingcar",shoppingCarts);
        }
        return "redirect:/menus/qiantai/allMenus";
    }


    //购物车单个取消
    @RequestMapping("order_shoppingcardel")
    public String order_shoppingcardel(HttpServletRequest request){
        HttpSession session=request.getSession();
        List<ShoppingCart> shoppingCarts=(List<ShoppingCart>)session.getAttribute("shoppingcar");
        Integer id=Integer.parseInt(request.getParameter("del"));
        Integer i=0;
        for (ShoppingCart shoppingCart:shoppingCarts) {
            if(i.equals(id)){
                shoppingCarts.remove(shoppingCart);
                break;
            }
            i++;
        }

        return "redirect:/menus/qiantai/allMenus";
    }
    @RequestMapping("order_addshoppingcartoOrder")

    //提交或取消订单
    public String order_addshoppingcartoOrder(HttpServletRequest request) {
        HttpSession session=request.getSession();
        List<ShoppingCart> shoppingCarts=(List<ShoppingCart>)session.getAttribute("shoppingcar");
        if(session.getAttribute("user_session")!=null) {
            Users user = (Users) session.getAttribute("user_session");
            Integer userid = usersService.queryByname(user.getName());
            Integer delivery = 0;
            String remove = request.getParameter("remove");
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date(System.currentTimeMillis());
            String day = formatter.format(date);
            Integer id = null;
            if (shoppingCarts != null) {
                for (ShoppingCart shoppingCart : shoppingCarts) {
                    Integer sums = shoppingCart.getSums();
                    Integer menuid = shoppingCart.getId();
                    Orders orders = new Orders(id, userid, menuid, sums, day, delivery);
                    ordersService.insert(orders);
                }
                session.removeAttribute("shoppingcar");
            }

            if(remove!=null) {
                if (remove.equals("1")) {
                    session.removeAttribute("shoppingcar");
                }
            }
        }else{
            return "redirect:../public/qiantai/login.jsp";
        }
        return "redirect:/menus/qiantai/allMenus";
    }

}