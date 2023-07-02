package com.util;

import com.bean.User;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtil {

//    private Connection con = null;//数据库连接对象
//    private PreparedStatement pstm = null;//预处理对象
//    private ResultSet rs = null;//结果集对象
//    private int row =0;
public static void main(String[] args){
    getConnection();

}

    public  static java.sql.Connection getConnection() {

        InputStream in = JDBCUtil.class.getClassLoader().getResourceAsStream("jdbc.properties");
        Properties properties = new Properties();
        try {
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            Class.forName(properties.getProperty("driver"));
            java.sql.Connection connection = null;
            try {
                connection = DriverManager.getConnection(properties.getProperty("url"), properties.getProperty("username"), properties.getProperty("password"));
                System.out.println("成功连接数据库");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            return connection;


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        throw new RuntimeException("获取连接异常");
    }

    public static void close(ResultSet rs, PreparedStatement pstm, java.sql.Connection con){
        try{
            if(rs!=null){
                rs.close();
            }
            if(pstm!=null){

                pstm.close();
            }
            if(con!=null){
                con.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void close(PreparedStatement pstm, Connection con){
        try{
            if(pstm!=null){
                pstm.close();
            }
            if(con!=null){
                con.close();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}
