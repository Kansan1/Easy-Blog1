package com.dao;

import com.bean.Passage;
import com.bean.User;
import com.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class PassageDaoImpl implements PassageDao {
    private Connection con = null;//数据库连接对象
    private PreparedStatement pstm = null;//预处理对象
    private ResultSet rs = null;//结果集对象
    private int row = 0;
    private int i = 0;

    Passage passage = new Passage();

    @Override
    public int passage(Passage passage) {

        try {
            if (passage.title == null || passage.title.trim().isEmpty() || passage.context == null || passage.context.trim().isEmpty()) {
                return 0;
            } else {
                con = JDBCUtil.getConnection();
                //定义sql语句
                String sql = "insert into passage(title,context)values(?,?)";
                //获取预处理对象
                pstm = con.prepareStatement(sql);
                //传参
                pstm.setObject(1, passage.getTitle());
                pstm.setObject(2, passage.getContext());
                //执行sql
                row = pstm.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(pstm, con);
        }
        return row;
    }

    @Override
    public Passage getpassage(String title, String context) {
        List<Passage> data = null;
        try {
            data = new ArrayList<>();
            con = JDBCUtil.getConnection();
            //3.定义sql语句
            String sql = "select * from passage where title=? and context=?";
            //4.获取预处理对象
            pstm = con.prepareStatement(sql);
            //5.传参
            pstm.setObject(1, title);
            pstm.setObject(2, context);
            //6.执行sql
            rs = pstm.executeQuery();
            //7.结果集处理
            while (rs.next()) {
                Passage passage = new Passage();
                //从结果集中获取数据，然后封装到实体类对象中
                data.add(passage);
                System.out.println(passage);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (Passage) data;
    }


}
