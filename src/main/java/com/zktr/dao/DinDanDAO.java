package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DinDanDAO extends BaseDAO{
	public java.util.List<DingDan> cha(){
		String sql = "SELECT * FROM hs_order ORDER BY otime DESC;";
		return this.executeQuery(sql, new Mapper<DingDan>() {
			@Override
			public List<DingDan> map(ResultSet rs) throws SQLException {
				List<DingDan> list = new ArrayList<>();
				while(rs.next()) {
					DingDan saying = new DingDan(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7),
							rs.getString(8),
							rs.getString(9),
							rs.getString(10));
					list.add(saying);
				}
				return list;
			}
			
		});
	}
	public java.util.List<DingDan> chamohu(String name,String bian){
		String sql = "SELECT * FROM hs_order WHERE odetail LIKE '%"+name+"%' OR onumber LIKE  '%"+bian+"%'   ORDER BY otime DESC;";
		return this.executeQuery(sql, new Mapper<DingDan>() {
			@Override
			public List<DingDan> map(ResultSet rs) throws SQLException {
				List<DingDan> list = new ArrayList<>();
				while(rs.next()) {
					DingDan saying = new DingDan(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7),
							rs.getString(8),
							rs.getString(9),
							rs.getString(10));
					list.add(saying);
				}
				return list;
			}
			
		});
	}
}
