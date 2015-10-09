package com.shop.util;

import com.sun.deploy.net.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by asus-pc on 2015/8/17.
 */
public class ValidateUtil {
    public   static  boolean ValidateNull(HttpServletRequest request,String[] fields){
        boolean validate=true;
        Map<String,String> errorMsg = new HashMap<String,String>();
        for (String field:fields){
            String value=request.getParameter(field);
            if (value==null||"".equals(value)){
                validate=false;
                errorMsg.put(field,field+"不能为空！");
            }
        }
        if (!validate){
            request.setAttribute("errorMsg",errorMsg);
        }
        return validate;
    }
    public  static  String showErrorMessage(HttpServletRequest request,String field){
        Map<String,String> errorMsg = (Map<String, String>) request.getAttribute("errorMsg");
        if (errorMsg==null) return  "";
        String msg=errorMsg.get(field);
        if (msg==null) return  "";
        return msg;
    }
}
