package com.zktr.dao;

import java.util.Map;

/**
 * FillData<T>接口：定义规则 dao.java
 *
 * 定义一个填充数据的接口
 * FillData<T> T表示填充数据的实体类
 */
public interface FillData<T> {
    /**
     * 填充方法：一次只填充一个实体对象(给一条数据 填充一条)
     * @param map  接收拾一个map集合
     * @return 返回的是一个实体类对象
     */
    public T fillData(Map<String,Object>map);
}
