package com.aaa.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Post;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.bean.Userspost;
import com.aaa.bean.deptJob;
import com.aaa.mapper.PostMapper;
import com.aaa.mapper.UserdetailMapper;
import com.aaa.mapper.UsersMapper;
import com.aaa.mapper.UserspostMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class UserdetailServiceImpl extends BaseServiceImpl<Userdetail> implements UserdetailService {
	@Autowired
	  UserdetailMapper mapper;
	@Autowired
	  UsersMapper usermapper;
	@Autowired
	PostMapper postMapper;
	@Autowired
	UserspostMapper userspostMapper;
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
		Integer maxID = mapper.getMaxID();
		for (deptJob dept : depts) {
			if(dept.getName().equals(user.getDependence())){
				user.setUsernum(dept.getJob()+"00"+(maxID+1));
			}
		}
		user.setFile("01460b57e4a6fa0000012e7ed75e83.png");
		user.setUnum("这家伙很懒什么都没留下!");
		mapper.insert(user);
           //生成员工账户
		   Users record=new Users();
			record.setUname(user.getUsername());
			record.setUnum(user.getUsername());
			record.setUpass("123456");
		usermapper.insert(record);
		Post onePost = postMapper.getOnePost(user.getPosition());
		userspostMapper.insert(new Userspost(onePost.getPid(), maxID+1));
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
		
		userspostMapper.deluserPost(userId);
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
	public void updateByPrimaryKeySelective(Userdetail record) {
		 mapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public XSSFWorkbook generate() {
		XSSFWorkbook wb = new XSSFWorkbook();  
		//创建受保护的sheet
		XSSFSheet sheet = wb.createSheet("绩效考勤表"); 
		sheet.protectSheet("admin");
		//单元格样式
		XSSFCellStyle  unlock = wb.createCellStyle(); 
		unlock.setLocked(false);
		//创建行
		XSSFRow row = sheet.createRow(0);  
		//创建标题
	    row.createCell(0).setCellValue("职工工号"); 
	    row.createCell(1).setCellValue("职工姓名"); 
	    row.createCell(2).setCellValue("所属部门");  
	    row.createCell(3).setCellValue("岗位");  
	    row.createCell(4).setCellValue("绩效分");  
	    row.createCell(5).setCellValue("迟到");  
	    row.createCell(6).setCellValue("早退");  
	    row.createCell(7).setCellValue("事假");  
	    Userdetail detail=new Userdetail();
	    detail.setStatus("试用");
	    List<Userdetail>list=mapper.select(detail);
	    detail.setStatus("在职");
	    list.addAll(mapper.select(detail));
        for(int i=1;i<=list.size();i++){
        	XSSFRow Userrow = sheet.createRow(i);  
    	    Userrow.createCell(0).setCellValue(list.get(i-1).getUsernum());
    	    Userrow.createCell(1).setCellValue(list.get(i-1).getUsername());
    	    Userrow.createCell(2).setCellValue(list.get(i-1).getDependence());
    	    Userrow.createCell(3).setCellValue(list.get(i-1).getPosition());
    	    Userrow.createCell(4).setCellStyle(unlock);
    	    Userrow.createCell(5).setCellStyle(unlock);
    	    Userrow.createCell(6).setCellStyle(unlock);
    	    Userrow.createCell(7).setCellStyle(unlock);;
        }
		return wb;
	}
	@Override
	public List<Userdetail> fuzzy(String username) {
		username="%"+username+"%";
		return mapper.fuzzy(username);
	}
	@Override
	public List<Userdetail> getOfficeUser() {
		   Userdetail detail=new Userdetail();
		    detail.setStatus("试用");
		    List<Userdetail>list=mapper.select(detail);
		    detail.setStatus("在职");
		    list.addAll(mapper.select(detail));
		return list;
	};
}
