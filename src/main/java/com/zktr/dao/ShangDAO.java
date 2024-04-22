package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShangDAO extends BaseDAO{
public java.util.List<Shang> cha(){
	String sql = "SELECT \r\n"
			+ "    c.cname AS 商品名称,\r\n"
			+ "    cc.category AS 类别,\r\n"
			+ "    cf.cfname AS 子类别,\r\n"
			+ "    MAX(hi.image) AS 图片链接,\r\n"
			+ "    c.STATUS AS 状态,\r\n"
			+ "    c.shelf_time AS 上架时间\r\n"
			+ "FROM \r\n"
			+ "    hs_commodity c\r\n"
			+ "LEFT JOIN \r\n"
			+ "    hs_category_from cf ON c.cfid = cf.cfid\r\n"
			+ "LEFT JOIN \r\n"
			+ "    hs_commodity_category cc ON cf.cateid = cc.cateid\r\n"
			+ "LEFT JOIN \r\n"
			+ "    hs_category_image hi ON c.cid = hi.cid\r\n"
			+ "GROUP BY \r\n"
			+ "    c.cid, c.cname, cc.category, cf.cfname, c.STATUS, c.shelf_time";
		return this.executeQuery(sql, new Mapper<Shang>() {
		@Override
		public List<Shang> map(ResultSet rs) throws SQLException {
			List<Shang> list = new ArrayList<>();
			while(rs.next()) {
				Shang saying = new Shang(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6));
				list.add(saying);
			}
			return list;
		}
		
	});
}
}
