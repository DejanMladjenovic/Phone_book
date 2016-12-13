package org.bildit.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("*.jsp")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
    	// TODO Auto-generated method stub
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
    	// TODO Auto-generated method stub
    }
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		
		if(request.getSession().getAttribute("user") != null || request.getRequestURI().endsWith("book/")
				|| request.getRequestURI().endsWith("register.jsp") || request.getRequestURI().endsWith("login.jsp")
				|| request.getRequestURI().endsWith("index.jsp")) {
			chain.doFilter(servletRequest, servletResponse);
		} else {
			request.getRequestDispatcher("login.jsp").forward(servletRequest, servletResponse);
		}
	}


}
