package com.shop.test;

import com.shop.medol.User;
import com.shop.dao.ShopServiceDao;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.junit.Test;

import java.sql.SQLException;

/**
 * Created by asus-pc on 2015/8/16.
 */
public class test extends ShopServiceDao {
    @Test
    public  void  add(){
        User user1=new User("123","nihao","jj");
        try {
            add(user1);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("添加失败~");
        }
    }
    @Test
    public  void delete(){
        try{
            delete(1);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("删除失败！");
        }
    }
    @Test
    public  void l(){
        User user =new User();
        try {
            System.out.println(list());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Test
    public  void load()  {

        try {
            System.out.println(load(4));
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


}
