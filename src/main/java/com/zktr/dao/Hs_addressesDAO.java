package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zktr.entiy.Hs_addresses;
import com.zktr.entiy.Hs_users_message;

/**
* @Description: 
* @author: 惠
* @date 2024年4月15日 上午8:30:51
*/
public class Hs_addressesDAO extends BaseDAO{
	public int insertAdderss(String aname,String aphone,String address,String def,int uid) {
		String sql = "INSERT INTO hs_addresses (aname, aphone, address, def, uid) VALUES(?,?,?,?,?)";
		return this.execute(sql, aname,aphone,address,def,uid);
	}
	
	public List<Hs_addresses> serach(int uid) {
		String sql = "SELECT * FROM hs_addresses WHERE uid = ?";
		return this.executeQuery(sql, new Mapper<Hs_addresses>() {

			@Override
			public List<Hs_addresses> map(ResultSet rs) throws SQLException {
				List<Hs_addresses> list = new ArrayList();
				while (rs.next()) {
					Hs_addresses s = new Hs_addresses(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4), 
							rs.getString(5),
							rs.getInt(6));
					list.add(s);
				}
				return list;
			}

		}, uid);
	}
	
	public int updatedef(int uid) {
		String sql = "UPDATE hs_addresses SET def = '0' WHERE uid = ?";
		return this.execute(sql, uid);
	}
	
	public int deleteAdderss(int uid,int aid) {
		String sql = "DELETE FROM hs_addresses WHERE uid = ? AND aid = ?";
		return this.execute(sql, uid,aid);
	}
	
	public int updateAddress(String aname,String aphone,String address,String def,int uid,int aid) {
		String sql = "UPDATE hs_addresses SET aname = ?,aphone=?,address=?,def=? WHERE uid = ? AND aid = ?";
		return this.execute(sql, aname,aphone,address,def,uid,aid);
	}
}
