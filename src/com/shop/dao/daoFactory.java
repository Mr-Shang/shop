package com.shop.dao;

/**
 * Created by asus-pc on 2015/8/16.
 */
public class daoFactory {
    public static ShopDao getShopDao() {
        return new ShopServiceDao();
    }
}
