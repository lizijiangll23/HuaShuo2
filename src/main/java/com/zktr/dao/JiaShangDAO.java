package com.zktr.dao;

public class JiaShangDAO extends BaseDAO{
	public int jiashang(String name,String xuan) {
		String sql = "INSERT INTO hs_commodity VALUES(null,?,(SELECT cfid FROM hs_category_from WHERE cfname = '"+xuan+"'),'上架',now())";
		return this.execute(sql, name);
	}
	public int peizhi(String peizhi,String cname) {
		String sql = "INSERT INTO hs_details VALUES(null,?,'1',(SELECT cid FROM hs_commodity WHERE cname = '"+cname+"'))";
		return this.execute(sql, peizhi);
	}
	public int fuwu(String fuwu,String cname) {
		String sql = "INSERT INTO hs_details VALUES(null,?,'3',(SELECT cid FROM hs_commodity WHERE cname = '"+cname+"'))";
		return this.execute(sql, fuwu);
	}
	public int tup(String src,String cname) {
		String sql = "INSERT INTO hs_category_image VALUES(null,?,(SELECT cid FROM hs_commodity WHERE cname = '"+cname+"'),?)";
		return this.execute(sql, "../imgs/"+src,cname);
	}
}
