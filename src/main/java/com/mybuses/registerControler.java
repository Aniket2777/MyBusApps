package com.mybuses;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

 
@WebServlet(description = "this register controller", urlPatterns = { "/getregisterC" })
public class registerControler extends HttpServlet {
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String fullname=request.getParameter("fullname");
		String username=request.getParameter("username");
		String  email=request.getParameter("email");
		int age=Integer.parseInt(request.getParameter("age"));
		long number=Long.parseLong(request.getParameter("mobile"));
		String password=request.getParameter("password");
		
		System.out.println(fullname);
		System.out.println(username);
		System.out.println(email);
		System.out.println(age);
		System.out.println(number);
		System.out.println(password);
		 
		
		
		
		
		if(fullname!=null && username!=null && email!=null && age!=0 && number!=0 && password!=null)
		{
			
			
			 
			
			
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/b190","root","root");
			 
			 String insertData="insert into pasangerdetails (fullname,email,number,age,username,password) values(?,?,?,?,?,?)";
			 
			 PreparedStatement pst=con.prepareStatement(insertData);
			                   pst.setString(1, fullname);
			                   pst.setString(2, email);
			                   pst.setLong(3, number);
			                   pst.setInt(4, age);
			                   pst.setString(5, username);
			                   pst.setString(6,password);
			                   
			    pst.executeUpdate();
			    con.close();
			 
		} catch (Exception e) {
			 System.out.println("Not Register....");
			 
			e.printStackTrace();
		}
		 
		 
		 
		}else {
			
			System.out.println("Enter full details");
		}
			
		 
		}
		
	}
 


