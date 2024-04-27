package com.zktr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShangDAO extends BaseDAO{
public Map<String, Object> cha(int curpage,int pagesize){
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
			+ "    c.cid, c.cname, cc.category, cf.cfname, c.STATUS, c.shelf_time limit ?,?";
	System.out.println(curpage + "," + pagesize);
	
	String sql2 = "SELECT COUNT(*) AS 总条数 "
			+ " FROM ("
			+ "    SELECT "
			+ "        c.cname AS 商品名称,"
			+ "        cc.category AS 类别,"
			+ "        cf.cfname AS 子类别,"
			+ "        MAX(hi.image) AS 图片链接,"
			+ "        c.STATUS AS 状态,"
			+ "        c.shelf_time AS 上架时间"
			+ "    FROM "
			+ "        hs_commodity c "
			+ "    LEFT JOIN "
			+ "        hs_category_from cf ON c.cfid = cf.cfid "
			+ "    LEFT JOIN "
			+ "        hs_commodity_category cc ON cf.cateid = cc.cateid "
			+ "    LEFT JOIN "
			+ "        hs_category_image hi ON c.cid = hi.cid "
			+ "    GROUP BY "
			+ "        c.cid, c.cname, cc.category, cf.cfname, c.STATUS, c.shelf_time"
			+ ") AS grouped_data";
		
		List<Shang> list=this.executeQuery(sql, new Mapper<Shang>() {
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
	},(curpage - 1) * pagesize, pagesize);
		Object obj = this.singleObject(sql2);
		Map<String, Object> map = new java.util.HashMap<String,Object>();
		System.out.println(list);
		System.out.println(obj);
	    map.put("list", list);
	    map.put("total", obj);
	    return map;
}

public java.util.List<Shang> mohu(String tiao){
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
			+ "    hs_category_image hi ON c.cid = hi.cid WHERE "+tiao
			
			+ " GROUP BY \r\n"
			+ "    c.cid, c.cname, cc.category, cf.cfname, c.STATUS, c.shelf_time ";
	System.out.println(sql);
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
public java.util.List<leibie> leibei(){
	String sql = "SELECT * FROM hs_category_from";
	System.out.println(sql);
		return this.executeQuery(sql, new Mapper<leibie>() {
		@Override
		public List<leibie> map(ResultSet rs) throws SQLException {
			List<leibie> list = new ArrayList<>();
			while(rs.next()) {
				leibie saying = new leibie(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3));
				list.add(saying);
			}
			return list;
		}
		
	});
}
public java.util.List<String> tup(String name){
	String sql = "SELECT\r\n"
			+ "    hi.image AS 图片链接\r\n"
			+ "FROM\r\n"
			+ "    hs_commodity c\r\n"
			+ "LEFT JOIN\r\n"
			+ "    hs_category_image hi ON c.cid = hi.cid WHERE "+name;
	System.out.println(sql);
		return this.executeQuery(sql, new Mapper<String>() {
		@Override
		public List<String> map(ResultSet rs) throws SQLException {
			List<String> list = new ArrayList<>();
			while(rs.next()) {
				list.add(rs.getString(1));
			}
			return list;
		}
		
	});
}
public int xiugai(String zhuang,String name) {
	String sql = "UPDATE hs_commodity SET status = ?, shelf_time = NOW() WHERE cname = ?";
	return execute(sql, zhuang,name);
}
public int shan(String lu,String name) {
	String sql = "DELETE FROM hs_category_image WHERE image = ? and product_name = ?";
	return execute(sql, lu,name);
}
public int shangxigai(String xname,String cname,String yname) {
	String sql = "UPDATE hs_commodity SET cname = '"+xname+"', cfid = (SELECT cfid FROM hs_category_from WHERE cfname = '"+cname+"') WHERE cname = '"+yname+"'";
	System.out.println(sql);
	return execute(sql);
}
public int xin(String src,String name) {
	String sql = "INSERT INTO hs_category_image VALUES(null,?,(select cid from hs_commodity where cname = '"+name+"'),?)";
	return this.execute(sql,src,name);
}
public Map<String, Object> jubushua(int curpage,int pagesize){
	String sql = "SELECT cid,cname,STATUS,shelf_time FROM hs_commodity";
	String sql2 = "SELECT count(*) FROM hs_commodity";
	System.out.println(sql);
		List<Shangjubu> list = this.executeQuery(sql, new Mapper<Shangjubu>() {
		@Override
		public List<Shangjubu> map(ResultSet rs) throws SQLException {
			List<Shangjubu> list = new ArrayList<>();
			while(rs.next()) {
				Shangjubu saying = new Shangjubu(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4));
				list.add(saying);
			}
			return list;
		}
		
	},(curpage - 1) * pagesize, pagesize);
		Object obj = this.singleObject(sql2);
		Map<String, Object> map = new java.util.HashMap<String,Object>();
		System.out.println(list);
		System.out.println(obj);
	    map.put("list", list);
	    map.put("total", obj);
	    return map;
}
public java.util.List<String> pei(String name){
	String sql = "SELECT details FROM hs_details WHERE cid = (SELECT cid FROM hs_commodity WHERE cname = '"+name+"') AND fid = '1'";
	System.out.println(sql);
		return this.executeQuery(sql, new Mapper<String>() {
		@Override
		public List<String> map(ResultSet rs) throws SQLException {
			List<String> list = new ArrayList<>();
			while(rs.next()) {
				list.add(rs.getString(1));
			}
			return list;
		}
		
	});
}
public int peishan(String name,String m) {
	String sql = "DELETE FROM hs_details WHERE details = ? and cid = (SELECT cid FROM hs_commodity WHERE cname = '"+name+"')";
	System.out.println(sql);
	return execute(sql, m);
}
}
