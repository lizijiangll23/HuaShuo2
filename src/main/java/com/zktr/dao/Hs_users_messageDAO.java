package com.zktr.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.zktr.entiy.Hs_users_message;

import entity.Loding;

/**
 * @Description:
 * @author: 惠
 * @date 2024年4月7日 上午10:24:36
 */
public class Hs_users_messageDAO extends BaseDAO {
	public int update(String pass, int uid) {
		String sql = "UPDATE hs_users_message SET upass = ? WHERE uid = ?";
		return this.execute(sql, pass, uid);
	}

	public int regUser(String upass, String head, String email, String phone) {
		int userCount = getMaxUserCount();
		String uname = generateUsername(userCount + 1);

		// 将account的第一个英文字母改为大写
		String firstLetter = uname.substring(0, 1).toUpperCase();
		String modifiedAccount = firstLetter + uname.substring(1);

		String sql = "INSERT INTO hs_users_message (uname, account, upass, head, email, phone) VALUES (?, ?, ?, ?, ?, ?)";
		return this.execute(sql, uname, modifiedAccount, upass, head, email, phone);
	}

	public List<Hs_users_message> serach(String phone) {
		String sql = "SELECT * FROM hs_users_message where phone = ?";
		return this.executeQuery(sql, new Mapper<Hs_users_message>() {

			@Override
			public List<Hs_users_message> map(ResultSet rs) throws SQLException {
				List<Hs_users_message> list = new ArrayList();
				while (rs.next()) {
					Hs_users_message s = new Hs_users_message(rs.getInt(1), rs.getString(2), rs.getString(3),
							rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
					list.add(s);
				}
				return list;
			}

		}, phone);
	}

	public List<Hs_users_message> serach(String upass, String phoneorname) {
		String sql = "SELECT * FROM hs_users_message WHERE upass = ? AND (phone = ? OR uname = ?)  ";
		return this.executeQuery(sql, new Mapper<Hs_users_message>() {

			@Override
			public List<Hs_users_message> map(ResultSet rs) throws SQLException {
				List<Hs_users_message> list = new ArrayList();
				while (rs.next()) {
					Hs_users_message s = new Hs_users_message(rs.getInt(1), rs.getString(2), rs.getString(3),
							rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
					list.add(s);
				}
				return list;
			}

		}, upass, phoneorname, phoneorname);
	}

	
	public int updatePhone(String newphone,String oldphone) {
		String sql = "UPDATE hs_users_message SET phone = ? WHERE phone = ?";
		System.out.println(sql+";newphone="+newphone+";oldphone="+oldphone);
		return this.execute(sql, newphone,oldphone);
	
	}
	 

	// 获取当前数据库中已存在的最大用户数
	private static int getMaxUserCount() {
		int maxUserCount = 0;

		try (Connection conn = getConnection(); Statement stmt = conn.createStatement()) {
			String sql = "SELECT MAX(uid) FROM hs_users_message";
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				maxUserCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return maxUserCount;
	}

	// 根据当前用户数生成新用户的用户名
	private static String generateUsername(int userCount) {
		String format = "user%07d";
		return String.format(format, userCount);
	}
}
