package com.zktr.dao;

public class leibie {
private String id;
private String name;
private String cid;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getCid() {
	return cid;
}
public void setCid(String cid) {
	this.cid = cid;
}
@Override
public String toString() {
	return "leibie [id=" + id + ", name=" + name + ", cid=" + cid + "]";
}
public leibie(String id, String name, String cid) {
	super();
	this.id = id;
	this.name = name;
	this.cid = cid;
}
public leibie() {
	super();
}

}
