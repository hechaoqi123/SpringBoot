	package com.aaa.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Gg;
import com.aaa.service.GgService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/Gg")
public class GgController {
	
	@Autowired
	GgService ggservice;
	
	@RequestMapping("/getAllGg")
	public @ResponseBody PageInfo getAllGg(Integer pageNum){
		return ggservice.getAllGg(pageNum);
	}
	@RequestMapping("/getAllGgone1")
	public @ResponseBody PageInfo getAllGgone1(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone1(pageNum, ggClassify);
	}
	@RequestMapping("/getAllGgone2")
	public @ResponseBody PageInfo getAllGgone2(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone2(pageNum, ggClassify);
	}
	@RequestMapping("/getAllGgone3")
	public @ResponseBody PageInfo getAllGgone3(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone3(pageNum, ggClassify);
	}
	@RequestMapping("/getAllGgone4")
	public @ResponseBody PageInfo getAllGgone4(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone4(pageNum, ggClassify);
	}
	@RequestMapping("/getAllGgone5")
	public @ResponseBody PageInfo getAllGgone5(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone5(pageNum, ggClassify);
	}
	@RequestMapping("/getAllGgone6")
	public @ResponseBody PageInfo getAllGgone6(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone6(pageNum, ggClassify);
	}
	@RequestMapping("/getAllGgone7")
	public @ResponseBody PageInfo getAllGgone7(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone7(pageNum, ggClassify);
	}
	@RequestMapping("/getAllGgone8")
	public @ResponseBody PageInfo getAllGgone8(Integer pageNum,String ggClassify){
		return ggservice.getAllGgone8(pageNum, ggClassify);
	}
	
	/*@RequestMapping("/AddGg")
	public  String  AddGg(Gg gg) throws ServletException, IOException{
		ggservice.addGg(gg);
		return "xgp/AddNotice";
	}*/
	//文件上传
	//考勤信息录入:文件上传
		@RequestMapping("/AddGg")
		public String savePlay(Gg  gg,@RequestParam("file") MultipartFile file,
				   HttpServletRequest request) throws IllegalStateException, IOException{
			//OriginalFilename:原文件名
			//substring：截取字符串的子串
			String suffix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			UUID uuid=UUID.randomUUID();
	        String target=request.getSession().getServletContext().getRealPath("upload/xgp/");
	         File  targetFile=new File(target+uuid+suffix);
			file.transferTo(targetFile);
			//
			gg.setGgAccessory(target+uuid+suffix);
			ggservice.addGg(gg);
			System.out.println(gg);
			return "xgp/AddNotice";
		}
	

}
