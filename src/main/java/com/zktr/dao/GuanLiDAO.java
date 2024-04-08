package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class GuanLiDAO extends BaseDAO{
	public java.util.List<GuanLiYuan> cha(){
		String sql = "select * from hs_administrators";
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
	public Object bian() {
	    String sql = "SELECT ad_id FROM hs_administrators ORDER BY ad_id DESC LIMIT 1 ";
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
}