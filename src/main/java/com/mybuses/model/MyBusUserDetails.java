package com.mybuses.model;

public class MyBusUserDetails {
private int id;
private String fullName;
private String username;
private String email;
private int age;
private long mobile;
private String password;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFullName() {
	return fullName;
}
public void setFullName(String fullName) {
	this.fullName = fullName;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public long getMobile() {
	return mobile;
}
public void setMobile(long mobile) {
	this.mobile = mobile;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "MyBusUserDetails [id=" + id + ", fullName=" + fullName + ", username=" + username + ", email=" + email
			+ ", age=" + age + ", mobile=" + mobile + ", password=" + password + "]";
}





}
