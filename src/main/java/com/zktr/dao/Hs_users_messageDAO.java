package com.zktr.dao;

/**
* @Description: 
* @author: 惠
* @date 2024年4月7日 上午10:24:36
*/
public class Hs_users_messageDAO extends BaseDAO{
	public int update(String pass,int uid) {
		String sql = "UPDATE hs_users_message SET upass = ? WHERE uid = ?";
		return this.execute(sql, pass,uid);
	}
}
