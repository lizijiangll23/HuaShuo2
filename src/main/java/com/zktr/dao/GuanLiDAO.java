package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public class GuanLiDAO extends BaseDAO{
	public java.util.Map<String, Object> cha(int curpage,int pagesize){
		String sql = "select * from hs_administrators limit ?,?";
		String sql2 = "select COUNT(*) from hs_administrators";
		List<GuanLiYuan> list = this.executeQuery(sql, new Mapper<GuanLiYuan>() {
			@Override
			public List<GuanLiYuan> map(ResultSet rs) throws SQLException {
				List<GuanLiYuan> list = new ArrayList<>();
				while(rs.next()) {
					GuanLiYuan saying = new GuanLiYuan(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5));
					list.add(saying);
				}
				return list;
			}
			
		},(curpage - 1) * pagesize, pagesize);
		Object obj = this.singleObject(sql2);
		Map<String, Object> map = new java.util.HashMap<String,Object>();
		System.out.println(list);
		System.out.println(obj);
	    map.put("list", list);
	    map.put("total", obj);
	    return map;
}
	public Object bian() {
	    String sql = "SELECT ad_id FROM hs_administrators ORDER BY ad_id DESC LIMIT 1 ";
	    return this.singleObject(sql);
	}
	public Object mima(String id) {
	    String sql = "SELECT ad_pass FROM hs_administrators where ad_id ="+id;
	    return this.singleObject(sql);
	}
public int xin(int gon,String name,String account,String pass,String tx) {
	String sql = "INSERT INTO hs_administrators VALUES(?,?,?,?,?)";
	return this.execute(sql, gon,name,account,pass,tx);
}
public int shan(int id) {
	String sql = "DELETE FROM hs_administrators WHERE ad_id = ?";
	return execute(sql, id);
}
public int xiugai(String id,String mi,String to) {
	String sql = "update hs_administrators set ad_pass = ?, ad_head = ? where ad_id = ?";
	return execute(sql, id,mi,to);
}
public java.util.List<GuanLiYuan> chadan(String id){
	String sql = "select * from hs_administrators where ad_id = " +id;
	return this.executeQuery(sql, new Mapper<GuanLiYuan>() {
		@Override
		public List<GuanLiYuan> map(ResultSet rs) throws SQLException {
			List<GuanLiYuan> list = new ArrayList<>();
			while(rs.next()) {
				GuanLiYuan saying = new GuanLiYuan(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5));
				list.add(saying);
			}
			return list;
		}
		
	});
}

}