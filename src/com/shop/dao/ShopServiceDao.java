package com.shop.dao;

import com.shop.dao.ShopDao;
import com.shop.medol.ShopException;
import com.shop.medol.User;
import com.shop.util.DButils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by asus-pc on 2015/8/16.
 */
public class ShopServiceDao implements ShopDao {
    @Override
    public void add(User user) throws SQLException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        DButils dButils = new DButils();
        connection = dButils.getconnect();
        String sql = "select count(*)  from user where username =? ";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getUsername());
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                if (resultSet.getInt(1) > 0) throw new ShopException("已有用户，无法注册");
            }
            sql = "insert into user VALUES (NULL ,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getNickname());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            resultSet.close();
            preparedStatement.close();
            dButils.close();
        }
    }

    @Override
    public void delete(int UserId) throws SQLException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        DButils dButils = new DButils();
        String sql = "delete   from user where userId=?";
        try {
            connection = dButils.getconnect();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, UserId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            preparedStatement.close();
            dButils.close();
        }
    }

    @Override
    public void update(User user) throws SQLException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        DButils dButils = new DButils();
        String sql = "update  user set password=?, nickname=? where userId=?";
        try {
            connection = dButils.getconnect();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getPassword());
            preparedStatement.setString(2, user.getNickname());
            preparedStatement.setInt(3, user.getUserId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            preparedStatement.close();
            dButils.close();
        }

    }

    @Override
    public User load(int UserId) throws SQLException {
        Connection connection = null;
        PreparedStatement preparedstatement = null;
        ResultSet resultset = null;
        User user = null;
        DButils dbutils = new DButils();
        String sql = "select * from user where userId=? ";
        try {
            connection = dbutils.getconnect();
            preparedstatement = connection.prepareStatement(sql);
            preparedstatement.setInt(1, UserId);
            resultset = preparedstatement.executeQuery();
            while (resultset.next()) {
                user = new User();
                user.setUserId(resultset.getInt("UserId"));
                user.setUsername(resultset.getString("Username"));
                user.setPassword(resultset.getString("Password"));
                user.setNickname(resultset.getString("Nickname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            resultset.close();
            preparedstatement.close();
            dbutils.close();
        }
        return user;
    }

    @Override
    public List<User> list() throws SQLException {
        Connection connection = null;
        PreparedStatement preparedstatement = null;
        ResultSet resultset = null;
        User user = null;
        DButils dbutils = new DButils();
        List<User> users = new ArrayList<>();
        String sql = "select * from user  ";
        try {
            connection = dbutils.getconnect();
            preparedstatement = connection.prepareStatement(sql);
            // preparedstatement.setInt(1,UserId);
            resultset = preparedstatement.executeQuery();
            while (resultset.next()) {
                user = new User();
                user.setUserId(resultset.getInt("UserId"));
                user.setUsername(resultset.getString("Username"));
                user.setPassword(resultset.getString("Password"));
                user.setNickname(resultset.getString("Nickname"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            resultset.close();
            preparedstatement.close();
            dbutils.close();
        }
        return users;
    }

    @Override
    public User login(String Username, String Password) throws SQLException {
        Connection connection = null;
        PreparedStatement preparedstatement = null;
        ResultSet resultset = null;
        User user = null;
        DButils dbutils = new DButils();
        String sql = "select * from user where username=? ";
        try {
            connection = dbutils.getconnect();
            preparedstatement = connection.prepareStatement(sql);
            preparedstatement.setString(1, Username);
            resultset = preparedstatement.executeQuery();
            while (resultset.next()) {
                user = new User();
                user.setUserId(resultset.getInt("UserId"));
                user.setUsername(resultset.getString("Username"));
                user.setPassword(resultset.getString("Password"));
                user.setNickname(resultset.getString("Nickname"));
            }
            if (user == null) throw new ShopException("无此用户！");
            if (!user.getPassword().equals(Password)) throw new ShopException("密码错误！");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            resultset.close();
            preparedstatement.close();
            dbutils.close();
        }
        return user;
        //return null;
    }
}
