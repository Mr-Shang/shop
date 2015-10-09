package com.shop.dao;

import com.shop.medol.User;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by asus-pc on 2015/8/16.
 */
public interface ShopDao {
    public  void add(User user) throws SQLException;
    public  void delete(int UserId) throws SQLException;
    public  void update(User user) throws SQLException;
    public  User load(int UserId) throws SQLException;
    public  List<User> list() throws SQLException;
    public  User login(String Username,String Password) throws SQLException;
}
