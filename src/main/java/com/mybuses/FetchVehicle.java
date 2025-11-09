package com.mybuses;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.mybuses.model.Vehicles;
import com.mybuses.serviceImplemetaion.MyBusImpl;

 
@WebServlet("/serachVehicle")
public class FetchVehicle extends HttpServlet {
	 
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		String arrivingPoint=request.getParameter("arrivingPoint");
		String destination=request.getParameter("destination");
		
		 
		
		MyBusImpl mbs1=new MyBusImpl();
		 
		 
			if(mbs1.fetchVehicle(arrivingPoint, destination)) {
			
				 
			List<Vehicles> list1=mbs1.retriveAll(arrivingPoint,destination);
			     
			request.setAttribute("search", list1);
		    RequestDispatcher rd=request.getRequestDispatcher("showVi.jsp");
		                  rd.forward(request, response);
			}    
		else {
			System.out.println("record not found");
		}
		
		
		
	}
	
}
