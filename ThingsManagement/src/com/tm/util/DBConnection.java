package com.tm.util;

import java.sql.Connection;         //数据库连接类
import java.sql.DriverManager;      //驱动管理类
import java.sql.PreparedStatement;  //预处理类
import java.sql.ResultSet;          //结果集类
import java.sql.SQLException;       //SQL异常类

public class DBConnection {
    private static final String DBDRIVER = "com.mysql.jdbc.Driver";         //驱动类类名
    private static final String DBURL = "jdbc:mysql://localhost:3306/tm";   //数据库连接URL
    private static final String DBUSER = "root";                            //数据库用户名
    private static final String DBPASSWORD = "root";                        //数据库密码

    public static Connection getConnection(){
        Connection conn = null;         //声明一个连接对象
        try{
            Class.forName(DBDRIVER);    //注册驱动
            conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Connection conn){  //关闭连接对象
        if(conn != null){
            try{
                conn.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
    }
    public static void close(PreparedStatement pstmt){  //关闭预处理对象
        if(pstmt != null){
            try{
                pstmt.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
    }

    public static void close(ResultSet rs){  //关闭结果集对象
        if(rs != null){
            try{
                rs.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
    }
}
