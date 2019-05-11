package chitkara.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;

public class LoginController extends HttpServlet{
    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
    	doPost(request,response);
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
    	try{UserDao user=new UserDao();
    	user.setUid(request.getParameter("uid"));
    	user.setPwd(request.getParameter("psw"));
    	user=UserOperation.login(user);
    	PrintWriter out=response.getWriter();
    	if(user!=null&&user.getUser_type().equalsIgnoreCase("admin"))
    	{
    		request.getRequestDispatcher("Dashboard.jsp").include(request,response);
    		HttpSession session=request.getSession(true);
    		response.sendRedirect("admin/Dashboard.jsp");
    	}
    	else if(user!=null&&user.getUser_type().equalsIgnoreCase("user"))
    	{
    		HttpSession session=request.getSession(true);
    		
    		session.setAttribute("user",user);
    		response.sendRedirect("Dashboard.jsp?id="+session.getId());
    	}
    	else
    	{
    		response.sendRedirect("index.html");
    	}
    }catch(Exception e)
    	{
    	e.printStackTrace();
    	}
    	}
}
