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

@WebServlet("/register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.设置请求和响应的编码
        request.setCharacterEncoding("utf-8");//设置请求的编码格式
        response.setCharacterEncoding("utf-8");//设置响应的编码格式
        //2.获取请求参数
        String username = request.getParameter("username");//根据表单的name属性获取用户输入的值
        String password = request.getParameter("password");
        //封装到User对象中
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        //打印输出
        System.out.println(user);
        //JDBC操作
        UserDao userDao = new UserDaolmpl();
        int row = userDao.register(user);
        //3.做出响应
        if (row > 0) {
            //注册成功
            response.sendRedirect("login.jsp");
        } else {
            //注册失败
            response.sendRedirect("error.jsp");
        }
    }
}
