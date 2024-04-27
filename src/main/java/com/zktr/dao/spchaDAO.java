package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class spchaDAO extends com.zktr.dao.BaseDAO{
	public List<Shang> chadan(){
		String sql = "SELECT "
				+ "    c.cname AS 商品名称,"
				+ "    cc.category AS 类别,"
				+ "    cf.cfname AS 子类别,"
				+ "    MAX(hi.image) AS 图片链接,"
				+ "    c.STATUS AS 状态,"
				+ "    c.shelf_time AS 上架时间"
				+ " FROM "
				+ "    hs_commodity c "
				+ " LEFT JOIN "
				+ "    hs_category_from cf ON c.cfid = cf.cfid "
				+ " LEFT JOIN "
				+ "    hs_commodity_category cc ON cf.cateid = cc.cateid "
				+ " LEFT JOIN "
				+ "    hs_category_image hi ON c.cid = hi.cid "
				+ " GROUP BY "
				+ "    c.cid, c.cname, cc.category, cf.cfname, c.STATUS, c.shelf_time "
				+ " ORDER BY c.shelf_time DESC"
				+ " LIMIT 7";

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
							rs.getString(6)
							);
					list.add(saying);
				}
				return list;
			}
		});
	}
}
