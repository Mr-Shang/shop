package com.shop.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by asus-pc on 2015/8/16.
 */
public class DButils {
    private final String dbutildriver = "com.mysql.jdbc.Driver";
    private final String dburl = "jdbc:mysql://localhost:3306/shop";
    private final String dbuser = "root";
    private final String dbpassword = "105678";
    private Connection conn = null;

    // @Test
    public DButils() {
        try {
            Class.forName(dbutildriver);
            this.conn = DriverManager.getConnection(dburl, dbuser, dbpassword);
            System.out.println("数据库加载成功");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("数据库加载失败");
        }
    }

    public Connection getconnect() {
        return conn;
    }

    public void close() {
        try {
            conn.close();
            System.out.println("数据库关闭成功");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("数据库关闭失败");
        }
    }
}




