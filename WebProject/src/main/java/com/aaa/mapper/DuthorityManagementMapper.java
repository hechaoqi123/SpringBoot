package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Usersandmytransaction;
import com.aaa.bean.Visitonemodile;
import com.aaa.bean.Visittwomodile;
import com.aaa.bean.perform;

import tk.mybatis.mapper.common.Mapper;

public interface DuthorityManagementMapper extends Mapper<Visittwomodile>{
	//插入一级
	public void insertVisitonemodile(Visitonemodile visitonemodile);
	public List<Map> selectVisitonemodile(@Param("uid") Integer uid);
	//插入二级
	public int insert(Visittwomodile record);
	public List<Map> selectVisittwomodile(@Param("mOneId") Integer mOneId);
	
	//根据用户查询二级菜单
	public List<Map> selectUserTowModile(Integer uid);
	//根据二级菜单查询一级菜单
	public List<Map> selectOneMTowModile(Integer uid);
	//根据父级菜单查询对应的事务
	public List<Map> getMytransaction(Map map);
	//查询当前事务拥有访问权限的角色
    List<Map> TrueTran(Map map);
    //!(查询当前事务拥有访问权限的角色)
    List<Map> FalseTran(Map map);
    //增加删除事务访问角色
	int addTran(Usersandmytransaction uat);
	int delTran(Usersandmytransaction uat);
}
