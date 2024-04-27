package com.zktr.dao;

public class DingDan {
private String oid;
private String odetail;
private String otime;
private String total;
private String sate;
private String uid;
private String onumber;
private String ophoto;
private String oaddress;
private String oprice;
public String getOid() {
	return oid;
}
public void setOid(String oid) {
	this.oid = oid;
}
public String getOdetail() {
	return odetail;
}
public void setOdetail(String odetail) {
	this.odetail = odetail;
}
public String getOtime() {
	return otime;
}
public void setOtime(String otime) {
	this.otime = otime;
}
public String getTotal() {
	return total;
}
public void setTotal(String total) {
	this.total = total;
}
public String getSate() {
	return sate;
}
public void setSate(String sate) {
	this.sate = sate;
}
public String getUid() {
	return uid;
}
public void setUid(String uid) {
	this.uid = uid;
}
public String getOnumber() {
	return onumber;
}
public void setOnumber(String onumber) {
	this.onumber = onumber;
}
public String getOphoto() {
	return ophoto;
}
public void setOphoto(String ophoto) {
	this.ophoto = ophoto;
}
public String getOaddress() {
	return oaddress;
}
public void setOaddress(String oaddress) {
	this.oaddress = oaddress;
}
public String getOprice() {
	return oprice;
}
public void setOprice(String oprice) {
	this.oprice = oprice;
}
@Override
public String toString() {
	return "DingDan [oid=" + oid + ", odetail=" + odetail + ", otime=" + otime + ", total=" + total + ", sate=" + sate
			+ ", uid=" + uid + ", onumber=" + onumber + ", ophoto=" + ophoto + ", oaddress=" + oaddress + ", oprice="
			+ oprice + "]";
}
public DingDan(String oid, String odetail, String otime, String total, String sate, String uid, String onumber,
		String ophoto, String oaddress, String oprice) {
	super();
	this.oid = oid;
	this.odetail = odetail;
	this.otime = otime;
	this.total = total;
	this.sate = sate;
	this.uid = uid;
	this.onumber = onumber;
	this.ophoto = ophoto;
	this.oaddress = oaddress;
	this.oprice = oprice;
}
public DingDan() {
	super();
}

}
