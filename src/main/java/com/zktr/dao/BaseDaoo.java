package com.zktr.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BaseDaoo {
    public Connection con;
    public PreparedStatement ps;

    /**
     * 连接方法
     *
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public void createConn() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/huashuo?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8", "root", "123456789");
    }

    /**
     * 关闭方法
     *
     * @throws SQLException
     */
    public void close() throws SQLException {
        con.close();
        ps.close();
    }

    /**
     * 修改方法(增、删、改)
     *
     * @param sql
     * @param objects
     * @return 返回影响的行数，如果行数>=1表示操作成功
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public int update(String sql, Object... obj) throws SQLException, ClassNotFoundException {
        this.createConn();
        ps = con.prepareStatement(sql);
        // 绑定数据
        if (obj != null) {
            for (int i = 0; i < obj.length; i++) {
                ps.setObject(i+1, obj[i]);
            }
        }
        int row=ps.executeUpdate();//执行
        this.close();//关闭
        return row;
    }

    /**
     * 查询多个值的方法
     * @param <T> 表示数据对象类型【实体类名】
     * @param sql 要执行的查询语句
     * @param fillData 要填充的对象
     * @param obj	sql语句的参数类别
     * @return	返回封装后的集合
     * @throws SQLException
     * @throws ClassNotFoundException
     *
     * rs-(第一条存入)->map-(通过FillData 转换为 实体对象)->FillData-(存入)->List<T>
     * 1、
     *
     */
    <T> List<T> query(String sql,FillData<T> fillData,Object...obj) throws ClassNotFoundException, SQLException{
        //调用连接
        this.createConn();
        //产生ps对象
        ps=con.prepareStatement(sql);
        //绑定参数
        if(obj!=null) {
            for(int i=0;i<obj.length;i++) {
                ps.setObject(i+1, obj[i]);
            }
        }
        System.out.println(ps);
        //执行sql语句 获得结果集
        ResultSet rs=ps.executeQuery();

        //获取结果集的列数【该结果集有多少个列】
        ResultSetMetaData cols=rs.getMetaData();
        //取列名  cols.getColumnCount()方法是获取集合中的列数
        //colsName 是存放列名
        String colsName[]=new String[cols.getColumnCount()];
        //循环读取列名
        for(int i=0;i<colsName.length;i++) {
            //
            colsName[i]=cols.getColumnName(i+1);
        }

        //创建一个集合 存放所有的记录
        List<T> list=new ArrayList<T>();
        //读取数据
        while(rs.next()) {//rs.next() 读一条记录
            //创建一个map集合 存放一条记录
            Map<String, Object> map=new HashMap<String, Object>();
            //循环读取每一列 存放map
            for(int i=0;i<colsName.length;i++) {
                //根据列名读取列值
                Object value=rs.getObject(colsName[i]);
                //存放map
                map.put(colsName[i], value);

            }
            //通过调用fileData 的方法将map转为T类型对象 存放到集合中
            list.add(fillData.fillData(map));
        }
        this.close();
        return list;
    }

    /**
     * 统计查询方法
     * @param sql
     * @param objects
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public Object countQuery(String sql,Object...objects) throws ClassNotFoundException, SQLException {
        //调用连接方法
        this.createConn();
        ps=this.con.prepareStatement(sql);//创建执行对象
        if(objects!=null) {//绑定参数
            for(int i=0;i<objects.length;i++) {
                ps.setObject(i+1, objects[i]);
            }
        }
        ResultSet rs=ps.executeQuery();//执行sql
        Object jg=null;
        if(rs.next()) {//如果有结果 则读取结果【这里的结果只有一个值】
            jg=rs.getObject(1);//下标表示
        }
        rs.close();
        this.close();
        return jg;//返回结果
    }


    public boolean countQuery2(String sql,Object...objects) throws ClassNotFoundException, SQLException {
        //调用连接方法
        this.createConn();
        ps=this.con.prepareStatement(sql);//创建执行对象
        if(objects!=null) {//绑定参数
            for(int i=0;i<objects.length;i++) {
                ps.setObject(i+1, objects[i]);
            }
        }
        ResultSet rs=ps.executeQuery();//执行sql
        boolean zz=false;
        Object jg=null;
        if(rs.next()) {//如果有结果 则读取结果【这里的结果只有一个值】
            jg=rs.getObject(1);//下标表示
            zz=true;
        }
        rs.close();
        this.close();
        return zz;//返回结果
    }





}
