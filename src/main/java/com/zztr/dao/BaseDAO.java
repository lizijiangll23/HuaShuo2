package com.zztr.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.zktr.dao.Mapper;

/**
 * 鐖剁被DAO锛屼负鎶借薄绫�
 * @author LiZanhong
 *
 */
public class BaseDAO {
	/**
	 * 鑾峰彇杩炴帴瀵硅薄
	 * @return
	 */
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/huashuo?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8", "root", "123456");
			return conn;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 閲婃斁璧勬簮 
	 */
	public void close(ResultSet rs, Statement stmt, Connection conn) {
		try {
			if(rs != null) {
				rs.close();
			}
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 閲婃斁璧勬簮 
	 * @param stmt
	 * @param conn
	 */
	public void close(Statement stmt, Connection conn) {
		this.close(null, stmt, conn);
	}
	
	/**
	 * 缁戝畾鍙傛暟
	 * @param stmt
	 * @param params  1,2,3
	 */
	public void bindParameters(PreparedStatement stmt, Object...params) {
		if(params != null) {
			for(int i = 0; i < params.length; i ++) {
				try {
					stmt.setObject(i + 1, params[i]);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	/**
	 * 鎵цinsert銆乽pdate鍜宒elete璇彞
	 * @param sql
	 * @param params
	 * @return
	 */
	public int execute(String sql, Object...params) {
		try {
			//鑾峰彇杩炴帴瀵硅薄
			Connection conn = this.getConnection();
			//鍒涘缓璇彞瀵硅薄
			PreparedStatement stmt = conn.prepareStatement(sql);
			//缁戝畾鍙傛暟
			this.bindParameters(stmt, params);
			//鎵цSQL璇彞
			int v = stmt.executeUpdate();
			//閲婃斁璧勬簮 
			this.close(stmt, conn);
			//杩斿洖褰卞搷鐨勮鏁� 
			return v;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	/**
	 * 鎵цselect璇彞锛岃繑鍥濴ist闆嗗悎
	 * @param <E>
	 * @param sql
	 * @param mapper
	 * @param params
	 * @return
	 */
	public <E> List<E> executeQuery(String sql, Mapper<E> mapper, 
			Object...params){
		try {
			//鑾峰彇杩炴帴瀵硅薄
			Connection conn = this.getConnection();
			//鍒涘缓璇彞瀵硅薄
			PreparedStatement stmt = conn.prepareStatement(sql);
			//缁戝畾鍙傛暟
			this.bindParameters(stmt, params);
			//鎵цSQL璇彞
			ResultSet rs = stmt.executeQuery();
			//灏哛esultSet杞崲鎴怢ist
			List<E> list = mapper.map(rs);
			//閲婃斁璧勬簮 
			this.close(rs, stmt, conn);
			//杩斿洖褰卞搷鐨勮鏁� 
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 杩斿洖涓�涓�硷紙涓嶆槸璁板綍锛夛紝閫傜敤浜庤繑鍥炵粨鏋滈泦涓轰竴琛屼竴鍒楃殑鎯呭喌
	 * @param sql
	 * @param params
	 * @return
	 */
	public Object singleObject(String sql, Object...params) {
		List<Object> list = this.executeQuery(sql, new Mapper<Object>() {
			@Override
			public List<Object> map(ResultSet rs) throws SQLException {
				List<Object> list = new ArrayList<>();
				while(rs.next()) {
					Object obj = rs.getObject(1);
					list.add(obj);
				}
				return list;
			}
		}, params);
		
		return list.get(0);//鍙渶瑕丩ist闆嗗悎涓殑绗�0涓厓绱�
	}
}


