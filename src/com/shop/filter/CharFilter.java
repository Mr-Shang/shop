package com.shop.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by ¶« on 2015/9/26.
 */
public class CharFilter implements Filter{
    private  String encoding;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        encoding=filterConfig.getInitParameter(encoding);
        if (encoding==null||"".equals(encoding)){
            encoding="UTF-8";
        }

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
          servletRequest.setCharacterEncoding(encoding);
          filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
