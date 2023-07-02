package com.controller;

import com.bean.User;
import com.dao.UserDao;
import com.dao.UserDaolmpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.设置请求和响应的编码
        request.setCharacterEncoding("utf-8");//设置请求的编码格式
        response.setCharacterEncoding("utf-8");//设置响应的编码格式
        response.setContentType("text/html;charset=UTF-8");//设置响应的格式为：文本/html;中文编码

        //2.获取请求参数
        String username = request.getParameter("username");//根据表单的name属性获取用户输入的值
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);

        //3.业务处理-JDBC 给予用户名和密码 返回用户对象
        UserDao userDao = new UserDaolmpl();//spring框架自动注入
        User login = userDao.login(username, password);

        //4.判断业务处理结果，给前端做出响应
        if (login != null) {
            //登录成功
            response.sendRedirect("show.jsp");
        } else {
            //登录失败
            response.sendRedirect("error.jsp");
        }
    }
}