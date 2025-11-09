package com.mybuses;

import java.io.IOException;

import com.mybuses.serviceImplemetaion.MyBusImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/ServletC")
public class ServletController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String username=request.getParameter("unsername");
	 String password=request.getParameter("password");

	 MyBusImpl mbs =new MyBusImpl();



	 //login
	 if(mbs.findUsernameAndPassword(username, password)){

		 HttpSession ss=request.getSession();
		             ss.setAttribute("username", username);

		 System.out.println("welcome Sir Login Successfull");
		 response.sendRedirect("homepages.jsp");

	 }else {
		 response.sendRedirect("loginpage.jsp");
	 }


	}




}
