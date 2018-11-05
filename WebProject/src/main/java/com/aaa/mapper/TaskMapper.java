package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.TwoUtilEntity;

import tk.mybatis.mapper.common.Mapper;

public interface TaskMapper extends Mapper<Task> {
	public List<Map> query(String name);
	public List<Map> querytwo();
	public void add(Task task);
	public void addone(Krar krar);
	public List<Map> selectall(String rwfl);
	public List<Map<String, String>> getOne(int id);
	//查询任务以及所属项目
	public List<Map> selectTask(@Param("key") String key);
	//根据任务id查询任务详情
	public List<Map> selectTailed(Integer tid);
	//根据项目id查询所项目的任务
	public List<Map> selectiid(Integer iid);
	//查询我的项目
    public List<Map> selectMeTask(Integer tid);
    //完成任务
    public void updateTask(Integer tid);
    //关闭任务
    public void updateTaskOne(Integer tid);
    
    //添加多条
    public void allIsert(TwoUtilEntity t);
    public void allzxr(@Param("taskid") Integer taskid,@Param("usersid") Integer usersid);
    public int selectMaxIdOne();
}
