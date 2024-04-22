package com.zktr.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
* @Description: 
* @author: 惠
* @date 2024年4月19日 下午2:54:02
*/
public class Hs_orderDAO extends BaseDAO{
	
	public int addOrderMassager(String odetail,String total,int uid,String ophoto,int onum) {
		String sql = "INSERT INTO hs_order (odetail, otime, total, sate, uid,onumber,ophoto,onum) VALUES(?,NOW(),?,'待支付',?,?,?,?)";
		long addnum = getMaxUserCount()+1;
		return this.execute(sql, odetail,total,uid,addnum,ophoto,onum);
	}
	
	// 获取当前数据库中已存在的最大用户数
	private static long getMaxUserCount() {
		long maxUserCount = 0;
	
		try (Connection conn = getConnection(); Statement stmt = conn.createStatement()) {
			String sql = "SELECT MAX(onumber) FROM hs_order";
			ResultSet rs = stmt.executeQuery(sql);
	
			if (rs.next()) {
				String a = rs.getString(1);
	            long maxOrder = Long.parseLong(a); // 将字符串转换为长整数
	            maxUserCount = maxOrder + 1; // 增加1
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return maxUserCount;
	}
}
