package com.zktr.dao;

public class DinDAO {
	private String din;
	private String name;
	public String getDin() {
		return din;
	}
	public void setDin(String din) {
		this.din = din;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "DinDAO [din=" + din + ", name=" + name + "]";
	}
	public DinDAO(String din, String name) {
		super();
		this.din = din;
		this.name = name;
	}
	public DinDAO() {
		super();
	}
	
}
