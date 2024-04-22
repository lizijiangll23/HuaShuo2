package com.zktr.dao;

public class denglu {
private String username;
private String address;
private String ip;
private String isp;
private String login_time;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getIp() {
	return ip;
}
public void setIp(String ip) {
	this.ip = ip;
}
public String getIsp() {
	return isp;
}
public void setIsp(String isp) {
	this.isp = isp;
}
public String getLogin_time() {
	return login_time;
}
public void setLogin_time(String login_time) {
	this.login_time = login_time;
}
@Override
public String toString() {
	return "denglu [username=" + username + ", address=" + address + ", ip=" + ip + ", isp=" + isp + ", login_time="
			+ login_time + "]";
}
public denglu(String username, String address, String ip, String isp, String login_time) {
	super();
	this.username = username;
	this.address = address;
	this.ip = ip;
	this.isp = isp;
	this.login_time = login_time;
}
public denglu() {
	super();
}

}
