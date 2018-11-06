package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.ArrUtil;
import com.aaa.bean.Krar;
import com.aaa.bean.OneUtilEntity;
import com.aaa.bean.Task;
import com.aaa.bean.TwoUtilEntity;
import com.aaa.mapper.PlanMapper;
import com.aaa.mapper.TaskMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



@Service
public class TaskServiceImpl implements TaskService {
    @Autowired
   private  TaskMapper mapper;

	@Override
	public PageInfo<Map> query(Integer pageNum,String name) {
		PageHelper.startPage(pageNum,10);
		List<Map> list=mapper.query(name);
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo<Map> querytwo(Integer pageNum) {
		PageHelper.startPage(pageNum, 10);
		List<Map> list=mapper.querytwo();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public void adds(Task task, Krar krar) {
		
		mapper.add(task);
		mapper.addone(krar);
	}

	@Override
	public PageInfo<Map> selectall(Integer pageNum, String rwfl) {
		PageHelper.startPage(pageNum,10);
		List<Map> list=mapper.selectall(rwfl);
	    PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public List<Task> querylet() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public List<Map<String, String>> getOne(int id) {
		
		return mapper.getOne(id);
	}
	public void insert(Task t) {
		mapper.insert(t);
	}

	@Override
	public List<Map> selectTask(String key) {
		return mapper.selectTask(key);
	}

	@Override
	public List<Map> selectTailed(Integer tid) {
		return mapper.selectTailed(tid);
	}

	@Override
	public List<Map> selectiid(Integer iid) {
		return mapper.selectiid(iid);
	}

	@Override
	public List<Map> selectMeTask(Integer tid) {
		return mapper.selectMeTask(tid);
	}

	@Override
	public void updateTask(Integer tid) {
		mapper.updateTask(tid);
	}

	@Override
	public void updateTaskOne(Integer tid) {
		mapper.updateTaskOne(tid);
	}

	@Override
	public void allIsert(ArrUtil list) {
		
		for(TwoUtilEntity a: list.getEh()){
			
			mapper.allIsert(a);
			
			a.getTid();
			for(OneUtilEntity sp:list.getCh()){
				System.out.println(a.getTid());
				System.out.println(sp.getUsersid());
				mapper.allzxr(a.getTid(), sp.getUsersid());
			}
			
			
		}
		
		//mapper.allIsert(list);
	}

	@Override
	public void allzxr(Integer taskid,Integer usersid){
		mapper.allzxr(taskid, usersid);
	}

	@Override
	public int selectMaxIdOne() {
		return mapper.selectMaxIdOne();
	}
	
	

}
