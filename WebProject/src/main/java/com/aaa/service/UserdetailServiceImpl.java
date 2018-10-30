package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
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
		mapper.insert(user);
		List<Userdetail> list=mapper.selectAll();
		Integer uid=1;
		Userdetail detail=null;
		if(list!=null){
			for (Userdetail userdetail : list) {
				if(userdetail.getDetailid()>=uid){
					detail=userdetail;
				}
			}
		}
		Users record=new Users();
		if(detail!=null){
			uid=detail.getDetailid();
			record.setUname(detail.getUsername());
			record.setUnum(detail.getUsername());
			record.setUpass("123456");
		}
		record.setUid(uid);
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
	
	

}
