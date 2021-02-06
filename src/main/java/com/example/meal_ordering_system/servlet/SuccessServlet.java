package com.example.meal_ordering_system.servlet;

import com.example.meal_ordering_system.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/successServlet")
public class SuccessServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users user = (Users) request.getAttribute("user");
        if (user != null) {
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().write("登录成功！" + user.getName() + ",欢迎您");
        }
    }
}

