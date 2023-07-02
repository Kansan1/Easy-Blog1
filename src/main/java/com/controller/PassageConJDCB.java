package com.controller;

import com.bean.Passage;
import com.dao.PassageDao;
import com.dao.PassageDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.apache.commons.lang3.StringUtils;
@WebServlet("/passage")
public class PassageConJDCB extends HttpServlet {
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
        String title = request.getParameter("title");
        String context = request.getParameter("context");
        Passage passage = new Passage();
        passage.setTitle(title);
        passage.setContext(context);
        System.out.println(passage);
        PassageDao passageDao = new PassageDaoImpl();
        int row = passageDao.passage(passage);

        if (StringUtils.isBlank(title) || StringUtils.isBlank(context)) {
                response.sendRedirect("errorPassage.jsp");
        } else {
            if (row > 0) {
                response.sendRedirect("functionPage.jsp");
            } else {
                response.sendRedirect("errorPassage.jsp");
            }
        }
    }




}
