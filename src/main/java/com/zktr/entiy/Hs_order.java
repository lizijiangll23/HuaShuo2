package com.zktr.entiy;

/**
* @Description: 
* @author: 惠
* @date 2024年4月19日 下午2:51:32
*/
public class Hs_order {
	private Integer oid; //id
	private String odetail; //订单明细
	private String otime; //订单日期
	private String total; //总金额
	private String sate; //订单状态
	private Integer uid; //外键连接用户表
	
	private String onumber;
	private String ophoto;
	private int onum;
	
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
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
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
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	@Override
	public String toString() {
		return "Hs_order [oid=" + oid + ", odetail=" + odetail + ", otime=" + otime + ", total=" + total + ", sate="
				+ sate + ", uid=" + uid + ", onumber=" + onumber + ", ophoto=" + ophoto + ", onum=" + onum + "]";
	}
	
	public Hs_order(Integer oid, String odetail, String otime, String total, String sate, Integer uid, String onumber,
			String ophoto, int onum) {
		super();
		this.oid = oid;
		this.odetail = odetail;
		this.otime = otime;
		this.total = total;
		this.sate = sate;
		this.uid = uid;
		this.onumber = onumber;
		this.ophoto = ophoto;
		this.onum = onum;
	}
	public Hs_order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
