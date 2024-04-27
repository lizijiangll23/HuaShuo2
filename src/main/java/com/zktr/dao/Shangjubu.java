package com.zktr.dao;

public class Shangjubu {
private String cid;
private String name;
private String status;
private String time;
public String getCid() {
	return cid;
}
public void setCid(String cid) {
	this.cid = cid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
@Override
public String toString() {
	return "Shangjubu [cid=" + cid + ", name=" + name + ", status=" + status + ", time=" + time + "]";
}
public Shangjubu(String cid, String name, String status, String time) {
	super();
	this.cid = cid;
	this.name = name;
	this.status = status;
	this.time = time;
}
public Shangjubu() {
	super();
}

}
