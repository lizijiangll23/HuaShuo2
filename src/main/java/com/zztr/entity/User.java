package com.zztr.entity;

public class User {
	private int uid;
	private String uname;
	private String upass;
	private String account;
	private String email;
	private String phone;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String uname, String upass, String account, String email, String phone) {
		super();
		this.uname = uname;
		this.upass = upass;
		this.account = account;
		this.email = email;
		this.phone = phone;
	}

	public User(int uid, String uname, String upass, String account, String email, String phone) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upass = upass;
		this.account = account;
		this.email = email;
		this.phone = phone;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
