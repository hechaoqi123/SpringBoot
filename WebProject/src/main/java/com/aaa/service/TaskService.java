package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.ArrUtil;
import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.perform;
import com.aaa.bean.plan;
import com.github.pagehelper.PageInfo;


public interface TaskService {
	public PageInfo<Map> query(Integer pageNum,String name);
	public PageInfo<Map> querytwo(Integer pageNum);
	public void adds(Task task,Krar krar);
	public PageInfo<Map> selectall(Integer pageNum,String rwfl);
	public List<Task> querylet();
	public List<Map<String, String>> getOne(int id);
	//新增任务
	public void insert(Task t);
	
	public List<Map> selectTask(String key);
	public List<Map> selectTailed(Integer tid);
	public List<Map> selectiid(Integer iid);
	public List<Map> selectMeTask(Integer tid);
	//完成任务
    public void updateTask(Integer tid);
    //关闭任务
    public void updateTaskOne(Integer tid);
    public void allIsert(ArrUtil list);
    public void allzxr( Integer taskid,Integer usersid);
    public int selectMaxIdOne();
}
