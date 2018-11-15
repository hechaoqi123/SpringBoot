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
		//PageHelper.startPage(pageNum,17);
		List<Map> list=mapper.query(name);
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo<Map> querytwo(Integer pageNum) {
		PageHelper.startPage(pageNum, 17);
		List<Map> list=mapper.querytwo();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public void adds(Task task, Krar krar) {
		// TODO Auto-generated method stub
		mapper.add(task);
		mapper.addone(krar);
	}

	@Override
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
		List<List<OneUtilEntity>> aa = list.getCh();
		  List<TwoUtilEntity> b = list.getEh();
		  System.out.println(b.size());
		for(int a=0;a<b.size();a++){
			System.out.println("第"+a+"次");
			 TwoUtilEntity t = b.get(a);//任务
			 List<OneUtilEntity> zxr = aa.get(a);
			mapper.allIsert(t);
			
			t.getTid();
			for (OneUtilEntity oneUtilEntity : zxr) {
				mapper.allzxr(t.getTid(),oneUtilEntity.getUsersid());
			}
			
				/*for (List<OneUtilEntity> aaa : list.getCh()) {
					System.out.println(((OneUtilEntity) aaa).getUsersid());
					
				}
				*/
			
			
			
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
