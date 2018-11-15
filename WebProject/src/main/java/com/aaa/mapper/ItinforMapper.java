package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Itinfor;

import tk.mybatis.mapper.common.Mapper;

public interface ItinforMapper extends Mapper<Itinfor>{
	//根据项目名查询对应的任务数,所有查询，以及分页查询
	public List<Map> selectDim(@Param("key") String key);
	//查询项目以及关联的客户名称及合同
	public List<Map> selectDetailed(Integer iid);
	
	public List<Map> selectState();
	//审核中的项目转执行中
	public void updateIdState(Integer iid);
	//查询我的项目
    public List<Map> selectMeItinfor(Integer did);
    //提交关闭项目
    public void updateIdStateOne(Integer iid);
    //审核关闭项目
    public List<Map> selectStateOne();
    //关闭项目
    public void updateIdStateTwo(Integer iid);
    //查询已完成的项目
    public List<Map> selectStateTwo();
    //查询项目经理
    public List<Map> selectUsers();
    //任命项目经理
    public void updateOrganization(Itinfor i);
    //查询项目经理下的员工
    public List<Map> selectUsersName();
    //任命小组成员
    public void updateItworkplan(Itinfor i);
    public List<Map> selectMeItinforOne(Integer did);
    public void updatejg(@Param("iid")Integer iid, @Param("itsum") String itsum);
	  
} 