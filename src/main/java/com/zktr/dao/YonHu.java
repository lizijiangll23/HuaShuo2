package com.zktr.dao;

import java.util.Objects;

public class YonHu {
	private int uid;
	private String uname;
	private String account;
	private String head;
	private String email;
	private String phone;
	 @Override
	    public boolean equals(Object o) {
	        if (this == o) return true;
	        if (o == null || getClass() != o.getClass()) return false;
	        YonHu yonHu = (YonHu) o;
	        return uid == yonHu.uid &&
	                Objects.equals(uname, yonHu.uname) &&
	                Objects.equals(account, yonHu.account) &&
	                Objects.equals(head, yonHu.head) &&
	                Objects.equals(email, yonHu.email) &&
	                Objects.equals(phone, yonHu.phone);
	    }

	    @Override
	    public int hashCode() {
	        return Objects.hash(uid, uname, account, head, email, phone);
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
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
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
	@Override
	public String toString() {
		return "YuanGon [uid=" + uid + ", uname=" + uname + ", account=" + account + ", head=" + head + ", email="
				+ email + ", phone=" + phone + "]";
	}
	public YonHu(int uid, String uname, String account, String head, String email, String phone) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.account = account;
		this.head = head;
		this.email = email;
		this.phone = phone;
	}
	public YonHu() {
		super();
	}
	public YonHu(int uid, String uname, String account, String head) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.account = account;
		this.head = head;
	}
	
}
