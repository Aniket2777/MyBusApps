package com.mybuses;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.mybuses.serviceImplemetaion.MyBusImpl;


@WebServlet(description = "this is used for forgot password", urlPatterns = { "/ForgotPassword" })
public class ForgotPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter(); 
		
		String mobileOrPass=request.getParameter("emilOrphone");
		String updatepass=request.getParameter("updatepass");
		MyBusImpl mbs1=new MyBusImpl();
		
		 if(mbs1.frogotpass(mobileOrPass)) {
             mbs1.UpdatePass(mobileOrPass, updatepass);			 
			 out.println("Password was Updated");
			 RequestDispatcher rd=request.getRequestDispatcher("updatePass.jsp");
			                   rd.forward(request, response);
		 }
		
	}

	 
}
