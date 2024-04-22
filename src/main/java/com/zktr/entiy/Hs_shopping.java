package com.zktr.entiy;

/**
* @Description: 
* @author: 惠
* @date 2024年4月18日 下午2:38:10
*/
public class Hs_shopping {
	private Integer gid; //id
	private Integer counts; //商品数量
	private String uprice; //单价
	private String head; //图片
	private Integer fid; //外键连接规格表
	private Integer uid;//外键连接用户表
	
	private String details;//规格详情
	
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getCounts() {
		return counts;
	}
	public void setCounts(Integer counts) {
		this.counts = counts;
	}
	public String getUprice() {
		return uprice;
	}
	public void setUprice(String uprice) {
		this.uprice = uprice;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Hs_shopping [gid=" + gid + ", counts=" + counts + ", uprice=" + uprice + ", head=" + head + ", fid="
				+ fid + ", uid=" + uid + "]";
	}
	public Hs_shopping(Integer gid, Integer counts, String uprice, String head, Integer fid, Integer uid) {
		super();
		this.gid = gid;
		this.counts = counts;
		this.uprice = uprice;
		this.head = head;
		this.fid = fid;
		this.uid = uid;
	}
	
	
	public Hs_shopping(Integer gid, Integer counts, String uprice, String head, Integer uid, String details) {
		super();
		this.gid = gid;
		this.counts = counts;
		this.uprice = uprice;
		this.head = head;
		this.uid = uid;
		this.details = details;
	}
	public Hs_shopping() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
