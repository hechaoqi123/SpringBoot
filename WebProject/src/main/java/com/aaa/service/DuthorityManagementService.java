package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Visitonemodile;
import com.aaa.bean.Visittwomodile;

public interface DuthorityManagementService {
	//插入一级
	public void insertVisitonemodile(Visitonemodile visitonemodile);
	public List<Map> selectVisitonemodile(Integer uid);
	//插入二级
	public int insert(Visittwomodile record);
	
	public List<Map> selectVisittwomodile(Integer mOneId);
	
	//根据用户查询二级菜单
	public List<Map> selectUserTowModile(Integer uid);
	//根据二级菜单查询一级菜单
	public List<Map> selectOneMTowModile(Integer uid);
	//根据父级菜单查询对应的事务
	public List<Map> getMytransaction(Integer mOneId);
		
}
