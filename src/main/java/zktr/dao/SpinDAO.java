package zktr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import zktr.entiy.fenlei;
import zktr.entiy.spdoucut;

public class SpinDAO extends BaseDAO {
    public int getProducts(String name) {
        String sql = "SELECT * FROM hs_category_from WHERE cfname=?";
        int i = 1;
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

    public List<spdoucut> spsjcx(String name) {
        final SpinDAO sp = new SpinDAO();
        int i = sp.getProducts(name);
        System.out.println(i);
        String sql = "SELECT DISTINCT hs_commodity.cname, hs_category_image.image, hs_details.details, hs_price.price "
            + "FROM hs_commodity "
            + "JOIN hs_category_image ON hs_commodity.cid = hs_category_image.cid "
            + "JOIN hs_details ON hs_commodity.cid = hs_details.cid "
            + "JOIN hs_combination ON hs_details.did = hs_combination.did "
            + "JOIN hs_price ON hs_combination.rid = hs_price.rid "
            + "WHERE hs_commodity.cfid = 1;";
            
        return this.executeQuery(sql, new Mapper<spdoucut>() {
            public List<spdoucut> map(ResultSet rs) throws SQLException {
                List<spdoucut> list = new ArrayList<>();
                Set<String> cnameSet = new HashSet<>(); // 用于保存已经存在的cname
                
                while (rs.next()) {
                    String cname = rs.getString(1);
                    
                    if (!cnameSet.contains(cname)) { // 检查cname是否已存在
                        spdoucut fl = new spdoucut(cname, rs.getString(3), rs.getDouble(4), rs.getString(2));
                        list.add(fl);
                        cnameSet.add(cname);
                    }
                }
                
                return list;
            }
        }, i);
    }

    public static void main(String[] args) {
        SpinDAO sp = new SpinDAO();

        System.out.println(sp.spsjcx("灵耀"));
    }
}
