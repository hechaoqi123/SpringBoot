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
		  List<Map> list= mapper.getAllUserdetail();
		  PageInfo<Map> info=new PageInfo<Map>(list);
		   return info;
	}
	
	@Override
	public PageInfo getAllOne0(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne0(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	
	@Override
	public PageInfo getAllOne1(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne1(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne2(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne2(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne3(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne3(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne4(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne4(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne5(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne5(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne6(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne6(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne7(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne7(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne8(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne8(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne9(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne9(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne10(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne10(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne11(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne11(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne12(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne12(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne13(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne13(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne14(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne14(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne15(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne15(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne16(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne16(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne17(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne17(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne18(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne18(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne19(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne19(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne20(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne20(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne21(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne21(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne22(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne22(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllOne23(Integer pageNum, String dependence) {
		PageHelper.startPage(pageNum,8);
		List<Map> list=mapper.getAllOne23(dependence);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	

}
