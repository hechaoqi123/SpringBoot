package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.bean.deptJob;
import com.aaa.mapper.UserdetailMapper;
import com.aaa.mapper.UsersMapper;
import com.aaa.mapper.WbMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class UserdetailServiceImpl implements UserdetailService {
	@Autowired
	  UserdetailMapper mapper;
	@Autowired
	  UsersMapper usermapper;
	//根据主键更改非空字段
	@Override
	public void update(Userdetail user) {
		Users u=new Users();
		u.setUname(user.getUsername());
		usermapper.updateByPrimaryKeySelective(u);
		mapper.updateByPrimaryKeySelective(user);
	}
	//查询单个用户信息
	public Userdetail getOne(Integer id){
		
		return mapper.selectByPrimaryKey(id);
	}
	//查询所有用户信息
	@Override
	public List<Userdetail> getAll() {
		return mapper.selectAll();
	}
	//添加员工信息
	@Transactional
	@Override
	public void save(Userdetail user) {
		//根据部门、用户主键生成工号
		deptJob[] depts=deptJob.values();
		for (deptJob dept : depts) {
			if(dept.getName().equals(user.getDependence())){
				user.setUsernum(dept.getJob()+"00"+(mapper.getMaxID()+1));
			}
		}
		mapper.insert(user);
           //生成员工账户
		   Users record=new Users();
		    record.setUid(mapper.getMaxID());
			record.setUname(user.getUsername());
			record.setUnum(user.getUsername());
			record.setUpass("123456");
		usermapper.insert(record);
	}
	@Override
	public List<Userdetail> queryByCriteria(String status) {
		Userdetail u=new Userdetail();
		  u.setStatus(status);
		return  mapper.select(u);
	}
	@Transactional
	@Override
	public void remove(Integer userId) {
		usermapper.deleteByPrimaryKey(userId);
		mapper.deleteByPrimaryKey(userId);
	}
	
	@Override
	public PageInfo getAllUserdetails(Integer pageNum) {
          PageHelper.startPage(pageNum,8);
		  List<Userdetail> list= mapper.selectAll();
		  PageInfo<Userdetail> info=new PageInfo<Userdetail>(list);
		   return info;
	}
	
	@Override
	public PageInfo<Userdetail> getAllOne(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		Userdetail u=new Userdetail();
		u.setDependence(dependence);
		mapper.select(u);
		List<Userdetail> list=mapper.select(u);
		PageInfo<Userdetail> info=new PageInfo<Userdetail>(list);
		return info;
	}
	
	
	@Transactional
	@Override
	public int updateByPrimaryKeySelective(Userdetail record) {
		return mapper.updateByPrimaryKeySelective(record);
	};
}
