package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Userdetail;
import com.github.pagehelper.PageInfo;

public interface UserdetailService {
	//获取单个员工信息
	public Userdetail getOne(Integer id);
	//获取所有员工信息
	public List<Userdetail> getAll();
	//添加员工信息
	public void save(Userdetail user);
	//条件检索
	public List<Userdetail> queryByCriteria(String status);
	//删除员工信息
	public void remove(Integer userId);
	public PageInfo getAllUserdetails(Integer pageNum);
	public void update(Userdetail user);
	//条件查询
	public PageInfo getAllOne0(Integer pageNum,String dependence);
	public PageInfo getAllOne1(Integer pageNum,String dependence);
	public PageInfo getAllOne2(Integer pageNum,String dependence);
	public PageInfo getAllOne3(Integer pageNum,String dependence);
	public PageInfo getAllOne4(Integer pageNum,String dependence);
	public PageInfo getAllOne5(Integer pageNum,String dependence);
	public PageInfo getAllOne6(Integer pageNum,String dependence);
	public PageInfo getAllOne7(Integer pageNum,String dependence);
	public PageInfo getAllOne8(Integer pageNum,String dependence);
	public PageInfo getAllOne9(Integer pageNum,String dependence);
	public PageInfo getAllOne10(Integer pageNum,String dependence);
	public PageInfo getAllOne11(Integer pageNum,String dependence);
	public PageInfo getAllOne12(Integer pageNum,String dependence);
	public PageInfo getAllOne13(Integer pageNum,String dependence);
	public PageInfo getAllOne14(Integer pageNum,String dependence);
	public PageInfo getAllOne15(Integer pageNum,String dependence);
	public PageInfo getAllOne16(Integer pageNum,String dependence);
	public PageInfo getAllOne17(Integer pageNum,String dependence);
	public PageInfo getAllOne18(Integer pageNum,String dependence);
	public PageInfo getAllOne19(Integer pageNum,String dependence);
	public PageInfo getAllOne20(Integer pageNum,String dependence);
	public PageInfo getAllOne21(Integer pageNum,String dependence);
	public PageInfo getAllOne22(Integer pageNum,String dependence);
	public PageInfo getAllOne23(Integer pageNum,String dependence);
	
}
