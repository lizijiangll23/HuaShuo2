package com.zktr.dao;

public class Lun {
private int id;
private String gtitle;
private String picture;
private String state;
private String renew;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getGtitle() {
	return gtitle;
}
public void setGtitle(String gtitle) {
	this.gtitle = gtitle;
}
public String getPicture() {
	return picture;
}
public void setPicture(String picture) {
	this.picture = picture;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getRenew() {
	return renew;
}
public void setRenew(String renew) {
	this.renew = renew;
}
public Lun(int id, String gtitle, String picture, String state, String renew) {
	super();
	this.id = id;
	this.gtitle = gtitle;
	this.picture = picture;
	this.state = state;
	this.renew = renew;
}
public Lun() {
	super();
}
@Override
public String toString() {
	return "Lun [id=" + id + ", gtitle=" + gtitle + ", picture=" + picture + ", state=" + state + ", renew=" + renew
			+ "]";
}

}
