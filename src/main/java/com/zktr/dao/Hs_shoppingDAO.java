package com.zktr.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.zktr.entiy.Hs_addresses;
import com.zktr.entiy.Hs_shopping;
import com.zktr.entiy.Hs_users_message;

/**
* @Description: 
* @author: 惠
* @date 2024年4月18日 下午2:41:30
*/
public class Hs_shoppingDAO extends BaseDAO{
	public List<Hs_shopping> serach(int uid) {
		String sql = "SELECT gid,sh.counts AS counts, sh.uprice AS uprice, sh.head AS head, d.details AS details, sh.uid AS uid\r\n"
				+ "FROM hs_shopping sh\r\n"
				+ "JOIN hs_specifications s ON sh.fid = s.fid\r\n"
				+ "JOIN hs_details d ON s.fid = d.fid\r\n"
				+ "JOIN hs_commodity c ON s.cid = c.cid\r\n"
				+ "WHERE uid = ? AND sh.`status` = 0";
		return this.executeQuery(sql, new Mapper<Hs_shopping>() {

			@Override
			public List<Hs_shopping> map(ResultSet rs) throws SQLException {
				List<Hs_shopping> list = new ArrayList();
				while (rs.next()) {
					Hs_shopping s = new Hs_shopping(
							rs.getInt("gid"),
							rs.getInt("counts"), 
							rs.getString("uprice"), 
							rs.getString("head"), 
							rs.getInt("uid"), 
							rs.getString("details"));
					list.add(s);
				}
				return list;
			}

		}, uid);
	} 
	
	public List<Hs_shopping> serachOrderMassage(int uid) {
		String sql = "SELECT gid,sh.counts AS counts, sh.uprice AS uprice, sh.head AS head, d.details AS details, sh.uid AS uid\r\n"
				+ "FROM hs_shopping sh\r\n"
				+ "JOIN hs_specifications s ON sh.fid = s.fid\r\n"
				+ "JOIN hs_details d ON s.fid = d.fid\r\n"
				+ "JOIN hs_commodity c ON s.cid = c.cid\r\n"
				+ "WHERE uid = ? AND sh.`status` = 1";
		return this.executeQuery(sql, new Mapper<Hs_shopping>() {

			@Override
			public List<Hs_shopping> map(ResultSet rs) throws SQLException {
				List<Hs_shopping> list = new ArrayList();
				while (rs.next()) {
					Hs_shopping s = new Hs_shopping(
							rs.getInt("gid"),
							rs.getInt("counts"), 
							rs.getString("uprice"), 
							rs.getString("head"), 
							rs.getInt("uid"), 
							rs.getString("details"));
					list.add(s);
				}
				return list;
			}

		}, uid);
	}
	
	public int deleteShopCarts(int gid,int uid) {
		String sql = " DELETE FROM hs_shopping WHERE gid = ? AND uid = ?";
		return this.execute(sql, gid,uid);
	}
	
	public int updateShopStatus(int uid,int gid) {
		String sql = " UPDATE hs_shopping SET `status` = 1 WHERE uid = ? AND `status` = 0 AND gid = ?";
		return this.execute(sql, uid,gid);
	}
	

	
}
