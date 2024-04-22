package com.zktr.dao;

public class GuanLiYuan {
	private int ad_id;
	private String ad_name;
	private String ad_account;
	private String ad_pass;
	private String ad_head;
	public GuanLiYuan(int ad_id, String ad_name, String ad_account, String ad_pass, String ad_head) {
		super();
		this.ad_id = ad_id;
		this.ad_name = ad_name;
		this.ad_account = ad_account;
		this.ad_pass = ad_pass;
		this.ad_head = ad_head;
	}
	public GuanLiYuan() {
		super();
	}
	@Override
	public String toString() {
		return "GuanLiYuan [ad_id=" + ad_id + ", ad_name=" + ad_name + ", ad_account=" + ad_account + ", ad_pass="
				+ ad_pass + ", ad_head=" + ad_head + "]";
	}
	public int getAd_id() {
		return ad_id;
	}
	public void setAd_id(int ad_id) {
		this.ad_id = ad_id;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public String getAd_account() {
		return ad_account;
	}
	public void setAd_account(String ad_account) {
		this.ad_account = ad_account;
	}
	public String getAd_pass() {
		return ad_pass;
	}
	public void setAd_pass(String ad_pass) {
		this.ad_pass = ad_pass;
	}
	public String getAd_head() {
		return ad_head;
	}
	public void setAd_head(String ad_head) {
		this.ad_head = ad_head;
	}
}
