package com.zktr.entiy;

import java.util.Date;

/**
* @Description: 
* @author: 惠
* @date 2024年4月7日 上午10:21:33
*/
public class Hs_users_message {
	private int uid; //id
	private String uname; //用户名
	private String account; //账号
	private String upass; //密码
	private String head; //头像
	private String email; //邮箱
	private String phone; //电话
	private Date birthday;//生日
	private String sex;//性别
	
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
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
		return "Hs_users_message [uid=" + uid + ", uname=" + uname + ", account=" + account + ", upass=" + upass
				+ ", head=" + head + ", email=" + email + ", phone=" + phone + ", birthday=" + birthday + ", sex=" + sex
				+ "]";
	}
	
	public Hs_users_message(int uid, String uname, String account, String upass, String head, String email,
			String phone, Date birthday, String sex) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.account = account;
		this.upass = upass;
		this.head = head;
		this.email = email;
		this.phone = phone;
		this.birthday = birthday;
		this.sex = sex;
	}
	public Hs_users_message() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
