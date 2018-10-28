package com.aaa.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.service.UserdetailService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("userdetail")
public class UserdetailController {
	@Autowired
	UserdetailService service;
	
	
	@RequestMapping("/getUserdetail")
   public String selectById(HttpSession session,Model model){
		Integer id=1;//此处应该从session中获取
		Userdetail user=service.getOne(1);
		model.addAttribute("user",user);
	    return "hcq/MyInfo";
   }
	@RequestMapping("/getAllUserdetail")
	@ResponseBody
   public PageInfo<Userdetail> getAll(Integer pageNum){
	   PageHelper.startPage(pageNum, 6);
	   List<Userdetail> users=service.getAll();
	   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
        return info;
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
		
		Users user = (Users) session.getAttribute("user");
		Userdetail ud = new Userdetail();
		ud.setFile(fileName+suffix);
		ud.setUnum(user.getUnum());
		service.updateByPrimaryKeySelective(ud);
		return "成功修改";
	}
}
