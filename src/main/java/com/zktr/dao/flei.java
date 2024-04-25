package com.zktr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zktr.entiy.fenlei;
import com.zktr.entiy.zqb;

public class flei extends BaseDAO {
	public List<fenlei> select() {
		String sql = "select * from hs_commodity_category";
		return this.executeQuery(sql, new Mapper<fenlei>() {
			public List<fenlei> map(ResultSet rs) throws SQLException {
				List<fenlei> list =new ArrayList<>();
				while (rs.next()) {
					fenlei fl = new fenlei(rs.getString(2));
					list.add(fl);
				}
				return list;
				
			}
		});
	}
	public int selectzfl(String name) {
	    String sql = "SELECT * FROM hs_commodity_category WHERE category=?";
	    int i =1;

	    try (Connection conn = getConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	        stmt.setString(1, name);
	        ResultSet rs = stmt.executeQuery();
	        
	        while (rs.next()) {
	            i = rs.getInt("cateid");
	        }
			rs.close();
			stmt.close();
			conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return i;
	}
	public List<zqb> selectqb(int id) {
		String sql = "SELECT * FROM hs_category_from WHERE cateid = ?";
		List<zqb> list =new ArrayList<>();
		try(Connection conn = getConnection();
		         PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				zqb fl = new zqb(rs.getString(2));
				list.add(fl);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO: handle exception
		}
		return list;
	}
	public static void main(String[] args) {
		flei fl = new flei();
		System.out.println(fl.select());
		System.out.println(fl.selectzfl("ROG电竞"));
		System.out.println(fl.selectqb(3));
	}
}
