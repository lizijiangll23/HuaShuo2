package com.zktr.entiy;

public class zqb {
	private int id ;
	private String name;
	private int cid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	@Override
	public String toString() {
		return name;
	}
	public zqb(String name) {
		super();
		this.name = name;
	}

	
}
