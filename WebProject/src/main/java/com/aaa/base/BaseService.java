package com.aaa.base;

import java.util.List;

import com.aaa.bean.Disburse;

public interface BaseService<T> {
   //添加
   public void save(T dis);
   //删除
   public void deleteByPrimaryKey(Object key);
   //通过主键修改全部字段
   public void updateByPrimaryKey(T record);
   //通过主键修改非空字段
   public void updateByPrimaryKeySelective(T record);
   //全表查询
   public List<T> getAll();
   //条件查询
   public List<T> select(T record);
   //通过主键查询一条
   public T selectByPrimaryKey(Object key);
   //通过条件查询一条
   public T selectOne(T record);
   
}
