package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LunDAO extends BaseDAO{
	public java.util.List<Lun> cha(){
		String sql = "SELECT * FROM hs_advertisement ORDER BY CAST(gtitle AS SIGNED)";
		return this.executeQuery(sql, new Mapper<Lun>() {
			@Override
			public List<Lun> map(ResultSet rs) throws SQLException {
				List<Lun> list = new ArrayList<>();
				while(rs.next()) {
					Lun saying = new Lun(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5));
					list.add(saying);
				}
				return list;
			}
			
		});
	}
public int shan(String lu) {
		String sql = "DELETE FROM hs_advertisement WHERE picture = ?";
		return execute(sql, lu);
	}
public int shunxu(String id,String shun) {
	String sql = "update hs_advertisement set gtitle = ?, renew = CURDATE() where picture = ?";
	return execute(sql,id,shun);
}
public int xin(String lian) {
	String sql = "INSERT INTO hs_advertisement VALUES(null,'1000',?,'正常',CURDATE())";
	return this.execute(sql, lian);
}
}	
