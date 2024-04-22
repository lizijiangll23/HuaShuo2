package com.zktr.dao;

public class Shang {
	private String name;
	private String liebie;
	private String zibie;
	private String tu;
	private String zhuan;
	private String date;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLiebie() {
		return liebie;
	}
	public void setLiebie(String liebie) {
		this.liebie = liebie;
	}
	public String getZibie() {
		return zibie;
	}
	public void setZibie(String zibie) {
		this.zibie = zibie;
	}
	public String getTu() {
		return tu;
	}
	public void setTu(String tu) {
		this.tu = tu;
	}
	public String getZhuan() {
		return zhuan;
	}
	public void setZhuan(String zhuan) {
		this.zhuan = zhuan;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Shang(String name, String liebie, String zibie, String tu, String zhuan, String date) {
		super();
		this.name = name;
		this.liebie = liebie;
		this.zibie = zibie;
		this.tu = tu;
		this.zhuan = zhuan;
		this.date = date;
	}
	public Shang() {
		super();
	}
	@Override
	public String toString() {
		return "ShangDAO [name=" + name + ", liebie=" + liebie + ", zibie=" + zibie + ", tu=" + tu + ", zhuan=" + zhuan
				+ ", date=" + date + "]";
	}
	
}
