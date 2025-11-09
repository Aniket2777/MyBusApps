package com.mybuses.model;

public class Vehicles {
private int vid;
private String arrivingPoint;
private String destination;
private String time;
private String busNumber;
public int getVid() {
	return vid;
}
public void setVid(int vid) {
	this.vid = vid;
}
public String getArrivingPoint() {
	return arrivingPoint;
}
public void setArrivingPoint(String arrivingPoint) {
	this.arrivingPoint = arrivingPoint;
}
public String getDestination() {
	return destination;
}
public void setDestination(String destination) {
	this.destination = destination;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getBusNumber() {
	return busNumber;
}
public void setBusNumber(String busNumber) {
	this.busNumber = busNumber;
}
@Override
public String toString() {
	return "Vehicles [vid=" + vid + ", arrivingPoint=" + arrivingPoint + ", destination=" + destination + ", time="
			+ time + ", busNumber=" + busNumber + "]";
}




}
