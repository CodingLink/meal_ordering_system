package com.example.meal_ordering_system.servlet;

import com.example.meal_ordering_system.controller.UsersController;
import com.example.meal_ordering_system.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userLoginServlet")
public class UserLoginServlet extends HttpServlet {
    @Autowired
    @Qualifier("usersService")
    UsersService usersService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.setCharacterEncoding("utf-8");
        String name=req.getParameter("name");
        String pwd=req.getParameter("pwd");

        //解决Servlet自动注入Service问题
        ServletContext application=this.getServletContext();
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this, application);

        boolean flag=usersService.login(name,pwd);
        if(!flag)
            req.getRequestDispatcher("/failServlet").forward(req,resp);
        else {
            req.setAttribute("name", name);
            req.getRequestDispatcher("/successServlet").forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
