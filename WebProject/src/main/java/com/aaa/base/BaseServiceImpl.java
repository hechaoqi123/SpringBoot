package com.aaa.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import tk.mybatis.mapper.common.Mapper;
//通用Service:对通用mapper的进一步封装
public abstract class BaseServiceImpl<T> implements BaseService<T> {
	@Autowired
    protected Mapper<T> mapper;
	@Override
	public void save(T obj) {
		mapper.insert(obj);
	}
	@Override
	public List<T> getAll() {
		return mapper.selectAll();
	}
	@Override
	public void deleteByPrimaryKey(Object key) {
		mapper.deleteByPrimaryKey(key);
	}
	@Override
	public void updateByPrimaryKey(T record) {
       mapper.updateByPrimaryKey(record);
	}
	@Override
	public List<T> select(T record) {
		return mapper.select(record);
	}
	@Override
	public T selectByPrimaryKey(Object key) {
		return mapper.selectByPrimaryKey(key);
	}
	@Override
	public T selectOne(T record) {
		return mapper.selectOne(record);
	}
	@Override
	public void updateByPrimaryKeySelective(T record) {
		  mapper.updateByPrimaryKeySelective(record);
	}
	
}
