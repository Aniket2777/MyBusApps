package com.mybuses.serviceIntefrace;

import java.util.List;

import com.mybuses.model.MyBusUserDetails;
import com.mybuses.model.Vehicles;

public interface ServiceIntr {

	
	public List<Vehicles> retriveAll(String arrivingPoint,String destination);
	
	public  boolean fetchVehicle(String arrivingPoint,String destination);
	
	public boolean findUsernameAndPassword(String password,String username);
	
	public void saveData();
	
 boolean frogotpass(String emailOrphone);
	
	
	
	
}
