package com.zktr.entiy;

/**
* @Description: 
* @author: 惠
* @date 2024年4月15日 上午8:28:09
*/
public class Hs_addresses {
	private int aid; //id
	private String aname; //收货人姓名
	private String aphone;//收货人电话
	private String address;//收货地址
	private String def;//默认地址
	private int uid; //外键用户id
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAphone() {
		return aphone;
	}
	public void setAphone(String aphone) {
		this.aphone = aphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDef() {
		return def;
	}
	public void setDef(String def) {
		this.def = def;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Hs_addresses [aid=" + aid + ", aname=" + aname + ", aphone=" + aphone + ", address=" + address
				+ ", def=" + def + ", uid=" + uid + "]";
	}
	public Hs_addresses(int aid, String aname, String aphone, String address, String def, int uid) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.aphone = aphone;
		this.address = address;
		this.def = def;
		this.uid = uid;
	}
	public Hs_addresses() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
