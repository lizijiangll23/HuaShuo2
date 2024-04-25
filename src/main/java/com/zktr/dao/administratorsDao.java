package com.zktr.dao;


import com.zktr.entiy.HsAdministrators;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


/*
 * 管理员表
 */

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


/*
 * 管理员表
 */
public class administratorsDao extends BaseDaoo {

	FillData<HsAdministrators> fillData = new FillData<HsAdministrators>() {

		@Override
		public HsAdministrators fillData(Map<String, Object> map) {

			HsAdministrators admin = new HsAdministrators();
			// map集合中的数据读取到cust对象中
			// 通过迭代器读取bcust中的数据
			Iterator<String> it = map.keySet().iterator();
			while (it.hasNext()) {
				// 根据键取值【键是表的列名，值是表的列值】
				String key = it.next();// 取键
				Object value = map.get(key);// 取值
				if (key.equalsIgnoreCase("ad_id")) {
					admin.setAdId(Integer.parseInt(String.valueOf(value)));
				} else if (key.equalsIgnoreCase("ad_name")) {
					admin.setAdName(String.valueOf(value));
				} else if (key.equalsIgnoreCase("ad_account")) {
					admin.setAdAccount(String.valueOf(value));
				}else if (key.equalsIgnoreCase("ad_pass")){
					admin.setAdPass(String.valueOf(value));
				}else if (key.equalsIgnoreCase("ad_head")){
					admin.setAdHead(String.valueOf(value));
				}
			}
			return admin;
		}
	};

	// 查询所有后台人员
	public List<HsAdministrators> selectAll() throws ClassNotFoundException, SQLException {
		String sql = "select * from hs_administrators";
		return this.query(sql, fillData, null);
	}

	// 判断登录是否成功
	public boolean determine(String name, String pass) throws ClassNotFoundException, SQLException {
		String sql = "select * from hs_administrators where ad_name=? and ad_pass=?";
		if (this.query(sql, fillData, name, pass).size() == 0) {
			return false;
		} else {
			return true;
		}
	}
	public boolean determinee(String name) throws ClassNotFoundException, SQLException {
		String sql = "select * from hs_administrators where ad_name=?";
		if (this.query(sql, fillData, name).size() == 0) {
			return false;
		} else {
			return true;
		}
	}

	// 编辑个人信息
	public int updateAdm(String name, String pass, String id) throws ClassNotFoundException, SQLException {
		String sql = "update hs_administrators set ad_name=?,ad_pass=? where ad_name=?";
		return this.update(sql, name, pass, id);
	}

}
