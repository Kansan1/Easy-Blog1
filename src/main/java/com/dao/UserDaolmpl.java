package com.dao;

import com.bean.User;
import com.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class UserDaolmpl implements UserDao{
    private Connection con = null;//数据库连接对象
    private PreparedStatement pstm = null;//预处理对象
    private ResultSet rs = null;//结果集对象
    private int row =0;
    User login = null;

    @Override
    public User login(String username, String password) {
        try {
            con= JDBCUtil.getConnection();
            //3.定义sql语句
            String sql = "select * from t_user where username=? and password=?";
            //4.获取预处理对象
            pstm = con.prepareStatement(sql);
            //5.传参
            pstm.setObject(1, username);
            pstm.setObject(2, password);
            //6.执行sql
            rs = pstm.executeQuery();
            //7.结果集处理
            if (rs.next()) {
                login = new User();
                //从结果集中获取数据，然后封装到实体类对象中
                int uid = rs.getInt("uid");
                login.setUid(uid);
                login.setUsername(rs.getString("username"));
                login.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            {
                //8.关闭资源
                JDBCUtil.close(rs,pstm,con);
            }
            return login;
        }
    }

    @Override
    public int register(User user) {
        try{
            con= JDBCUtil.getConnection();
            //定义sql语句
            String sql = "insert into t_user(username,password)values(?,?)";
            //获取预处理对象
            pstm = con.prepareStatement(sql);
            //传参
            pstm.setObject(1,user.getUsername());
            pstm.setObject(2,user.getPassword());
            //执行sql
            row = pstm.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            JDBCUtil.close(pstm,con);
        }
        return row;
    }


}
