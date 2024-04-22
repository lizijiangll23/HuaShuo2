package com.zztr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zktr.dao.Mapper;
import com.zztr.entity.User;

public class UserDAO extends BaseDAO{
	/**
	 * ��ѯ�����û�
	 * @return
	 */
	public List<User> queryAll(){
		String sql = "select * from hs_users_message order by uid desc";
		List<User> list = this.executeQuery(sql, new Mapper<User>() {
			@Override
			public List<User> map(ResultSet rs) throws SQLException {
				List<User> list = new ArrayList();
				while(rs.next()) {
					list.add(new User(rs.getInt("uid"), 
							rs.getString("uname"), 
							rs.getString("upass"), 
							rs.getString("account"), 
							rs.getString("email"), 
							rs.getString("phone")));
				}
				return list;
			}
		});
		return list;
	}
}
