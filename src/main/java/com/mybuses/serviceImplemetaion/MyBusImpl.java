package com.mybuses.serviceImplemetaion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mybuses.model.MyBusUserDetails;
import com.mybuses.model.Vehicles;
import com.mybuses.serviceIntefrace.ServiceIntr;


public class MyBusImpl implements ServiceIntr{

	
	
//====================================================================================================================================
	@Override
	public List<Vehicles> retriveAll(String arrivingPoint,String  destination) {
				
		List<Vehicles> list=new ArrayList<Vehicles>();
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/b190","root","root");
		    String  serach="select arrivingPoint,destination,time,busNumber from  vehicle where arrivingPoint=? and destination=?";
		     
		     
		    PreparedStatement pst=con.prepareStatement(serach);
		                      pst.setString(1, arrivingPoint);
		                      pst.setString(2, destination);
		    ResultSet rs=pst.executeQuery();
		             
		    	  
		    	  
		    	 while(rs.next()) {
		    		 
		    		 Vehicles v = new Vehicles();
		             v.setArrivingPoint(rs.getString("arrivingPoint"));
		             v.setDestination(rs.getString("destination"));
		             v.setTime(rs.getString("time"));
		             v.setBusNumber(rs.getString("busNumber"));
		             list.add(v);
		    	 }
		    
		    pst.close();
		    rs.close();
		    con.close();
		 
		   
	}catch (Exception e) {
		System.out.println("wrong Choise");
		
	}
		  return list; 
		 
	}
	
//==========================================================================================================	
	
	

	@Override
	public boolean findUsernameAndPassword(String username, String password) {
			 
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");;
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/b190","root","root");
		    String fetchUnAndPass="select username,password from pasangerdetails where username=? and password=?";
		     
		    
		    PreparedStatement pst=con.prepareStatement(fetchUnAndPass);
		                      pst.setString(1, username);
		                      pst.setString(2, password);
		    ResultSet rs=pst.executeQuery();
		    
		    if(rs.next()) {
		    	return true;
		    }
		    
		    pst.close();
		    rs.close();
		    con.close();
		    
		 }catch (Exception e) {
			 
		    System.out.println("error is occur");
		    
		 }		 		 
		return false;
	}
 

	@Override
	public  boolean fetchVehicle(String arrivingPoint, String destination) {		 
		try {
		
			    Class.forName("com.mysql.cj.jdbc.Driver");;
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/b190","root","root");
			    String fetchvehicle="select arrivingPoint,destination from vehicle where arrivingPoint=? and destination=?";
			    PreparedStatement pst=con.prepareStatement(fetchvehicle); 
			                      pst.setString(1, arrivingPoint);
			                      pst.setString(2, destination);
			                      
			                      
			    ResultSet rs=pst.executeQuery();
			              
			    if(rs.next()) {
			    return true;
			    	
			    }
			    pst.close(); 
			    con.close();
			    rs.close();
		}catch (Exception e) {
			System.out.println("error");
		}
		return false;
	}

	@Override
	public void saveData() {
		// TODO Auto-generated method stub
		
	}

 
//======================================================================================================================================	 
	 
	
	

}
