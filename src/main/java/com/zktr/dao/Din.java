package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Din extends BaseDAO{
	public List<DinDAO> cha(){
		String sql = "SELECT hs_order.onumber, hs_users_message.uname\r\n"
				+ "FROM hs_order\r\n"
				+ "INNER JOIN hs_users_message ON hs_order.uid = hs_users_message.uid ORDER BY otime DESC LIMIT 9 ;";
		return this.executeQuery(sql, new Mapper<DinDAO>() {
			@Override
			public List<DinDAO> map(ResultSet rs) throws SQLException {
				List<DinDAO> list = new ArrayList<>();
				while(rs.next()) {
					DinDAO saying = new DinDAO(
							rs.getString(1),
							rs.getString(2));
					list.add(saying);
				}
				return list;
			}
			
		});
}
	public java.util.List<denglu> rizhi(){
		String sql = "select username,address,ip,isp,login_time from login_logs ORDER BY login_time DESC LIMIT 9";
		return this.executeQuery(sql, new Mapper<denglu>() {
			@Override
			public List<denglu> map(ResultSet rs) throws SQLException {
				List<denglu> list = new ArrayList<>();
				while(rs.next()) {
					denglu saying = new denglu(
							rs.getString(1),
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
