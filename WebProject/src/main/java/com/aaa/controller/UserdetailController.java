package com.aaa.controller;

import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Userdetail;
import com.aaa.service.UserdetailService;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Dept;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.service.DeptService;
import com.aaa.service.UserdetailService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/userdetail")
public class UserdetailController {
	@Autowired
	UserdetailService service;
	@Autowired
	DeptService deptservice;
	@RequestMapping("/getUserdetail")
   public String selectById(HttpSession session,Model model){
		   //当前登陆用户信息
		    Users se=(Users) session.getAttribute("CurrentUser");
			Userdetail user=service.getOne(se.getUid());
			model.addAttribute("user",user);
	    return "hcq/MyInfo";
   }
	//生成绩效考勤表
	@RequestMapping("/generate")
	public void generate(HttpServletResponse response) throws Exception{
		//设置编码格式
		 response.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=utf-8"); 
		 response.addHeader("Content-type", "appllication/octet-stream");
		 String rename=(new Date().getYear()+1900)+"年"+(new Date().getMonth()+1)+"月份";
		 response.addHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(rename+"绩效考勤表.xlsx", "UTF-8"));
		 XSSFWorkbook workbook=service.generate();
		 workbook.write(response.getOutputStream());
	}
    //获取员工详细信息：criteria不为空时代表修改操作
	@RequestMapping("/getDetailInfo")
    public String selectUserInfo(Integer id,Model model,String criteria){
    	Userdetail user=service.getOne(id);
		model.addAttribute("user",user);
		String dept=user.getDependence();
		Dept entity=deptservice.getDept(dept);
		Userdetail superUser=service.getOne(Integer.valueOf(entity.getDeptstate()));
		model.addAttribute("superUserName",superUser.getUsername());
		if(criteria!=null){
	    return "hcq/UserdetailUpdate";
		}
    	return "hcq/DetailInfo";
    }
	//分页查询
	@RequestMapping("/getAllUserdetail")
	@ResponseBody
   public PageInfo<Userdetail> getAll(Integer pageNum){
	   PageHelper.startPage(pageNum,13);
	   List<Userdetail> users=service.getAll();
	   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
        return info;
  }
	//查询各种类别数量
	@RequestMapping("/classify")
	@ResponseBody
	  public List<Userdetail> getAll(Userdetail user){
		    return service.getAll();
	  }
	//条件检索
	@RequestMapping("/queryByCriteria")
	@ResponseBody
	public PageInfo<Userdetail> queryByCriteria(Integer pageNum,String status){
		  PageHelper.startPage(pageNum,13);
		   List<Userdetail> users=service.queryByCriteria(status);
		   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
	        return info;
	}
	//模糊查询
	@RequestMapping("/fuzzy")
	@ResponseBody
	public PageInfo<Userdetail> fuzzy(String username){
		   PageHelper.startPage(1,13);
		   if(username!=null&&!username.equals("")){
			   List<Userdetail> users=service.fuzzy(username);
			   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
		        return info;
		   }else{
			   return getAll(1);
		   }
	}
	//添加员工信息
	@RequestMapping("/save")
	public String save(Userdetail user){
		service.save(user);
		return "hcq/staff";
	}
	//删除员工信息
	@RequestMapping("/remove")
	public String remove(Integer userId){
		service.remove(userId);
		return "success";
	}
	//读取员工信息
	@RequestMapping("/getOne")
	public @ResponseBody Userdetail getOne(Userdetail record){
		Userdetail detail=new Userdetail();
			detail=service.selectOne(record);
		return detail;
	}
	//修改员工信息
	@RequestMapping("/udate")
	public String update(Userdetail user,Model model){
		service.update(user);
		return selectUserInfo(user.getDetailid(),model,null);
	}
	@RequestMapping("/getAllUser")
	public @ResponseBody PageInfo getAllUserDetail(Integer pageNum){
		PageInfo p=service.getAllUserdetails(pageNum);
 		return p;
	}	 
	
	//修改头像
	@RequestMapping("/insertVisitonemodile")
	@ResponseBody
	public String insertVisitonemodile(MultipartFile file, HttpSession session) throws Exception {
		//防止文件名重复、获取后缀
		UUID fileName=UUID.randomUUID();
		String suffix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		//获取要输出的真实路
		String path=session.getServletContext().getRealPath("/upload/portrait/"+fileName+suffix);
		File outPath=new File(path);
		//执行文件上传
		file.transferTo(outPath);
		
		Userdetail user = (Userdetail) session.getAttribute("detail");
		user.setPosition(null);
		user.setFile(fileName+suffix);
		service.updateByPrimaryKeySelective(user);
		return "成功修改";
	}
	
	
	@RequestMapping("/getAllOne0")
    public @ResponseBody PageInfo getAllOne0(Integer pageNum,String dependence){
     return service.getAllOne(pageNum, dependence);
    }
	
	 @RequestMapping("/getAllOne1")
     public @ResponseBody PageInfo getAllOne1(Integer pageNum,String dependence){
		 return service.getAllOne(pageNum, dependence);
     }
	 
}
