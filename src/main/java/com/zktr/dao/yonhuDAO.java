package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class yonhuDAO extends BaseDAO{
	public List<YonHu> chaxun(){
		String sql = "select uid,uname,account,head from hs_users_message ORDER BY uid";
		return this.executeQuery(sql, new Mapper<YonHu>() {
			@Override
			public List<YonHu> map(ResultSet rs) throws SQLException {
				List<YonHu> list = new ArrayList<>();
				while(rs.next()) {
					YonHu saying = new YonHu(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4));
					list.add(saying);
				}
				return list;
			}
			
		});
	}
	public List<YonHu> jubu(String id){
		String sql = "select uid,uname,account,head from hs_users_message where uid = "+id;
		return this.executeQuery(sql, new Mapper<YonHu>() {
			@Override
			public List<YonHu> map(ResultSet rs) throws SQLException {
				List<YonHu> list = new ArrayList<>();
				while(rs.next()) {
					YonHu saying = new YonHu(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4));
					list.add(saying);
				}
				return list;
			}
			
		});
	}
	public int gainame(String name,String id) {
		String sql = "update hs_users_message set uname = ? where uid = ?";
		return execute(sql, name,id);
		
	}
	public int gaito(String to,String id) {
		String sql = "update hs_users_message set head = ? where uid = ?";
		return execute(sql, to,id);
	}
	public List<YonHu> ming(List<String> numberList) {
	    // 构建 SQL 查询语句，使用 LIKE 子句和通配符 %
	    String sql = "SELECT * FROM hs_users_message WHERE uname LIKE ";
	    List<YonHu> resultList = new ArrayList<>();

	    // 遍历违规字数组
	    for (String keyword : numberList) {
	        // 构建带有通配符的违规字字符串，例如 "%违规字%"
	        String keywordWildcard = "'%" + keyword + "%'";
	        System.out.println(sql + keywordWildcard);
	        // 执行查询并将结果添加到 resultList
	        List<YonHu> queryResult = this.executeQuery(sql + keywordWildcard, new Mapper<YonHu>() {
	            @Override
	            public List<YonHu> map(ResultSet rs) throws SQLException {
	                List<YonHu> list = new ArrayList<>();
	                while (rs.next()) {
	                    YonHu saying = new YonHu(
	                            rs.getInt(1),
	                            rs.getString(2),
	                            rs.getString(3),
	                            rs.getString(4));
	                    list.add(saying);
	                }
	                return list;
	            }
	        });

	        // 检查查询结果，避免重复添加
	        for (YonHu result : queryResult) {
	            if (!resultList.contains(result)) {
	                resultList.add(result);
	            }
	        }
	    }

	    return resultList;
	}
}