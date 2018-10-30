package com.aaa.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Zs;
import com.aaa.service.ZsService;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/Zs")
public class ZsController {
	
	@Autowired
	ZsService zsservice;
	
	@RequestMapping("/AddZs")
	public String savePlay(Zs  zs,@RequestParam("file") MultipartFile file,
			   HttpServletRequest request) throws IllegalStateException, IOException{
		if(!file.getOriginalFilename().equals("")){
			//OriginalFilename:原文件名
			//substring：截取字符串的子串
			String suffix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			UUID uuid=UUID.randomUUID();
	        String target=request.getSession().getServletContext().getRealPath("upload/xgp/");
	         File  targetFile=new File(target+uuid+suffix);
			file.transferTo(targetFile);
			//
			zs.setZsaccessory(uuid+suffix);
		}
		zsservice.getAddzs(zs);
		return "xgp/AddKnowledge";
	}
	//chaxun
	 @Temporal(TemporalType.TIMESTAMP)  
	 @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@RequestMapping("/getAllZs")
	public @ResponseBody PageInfo<Map> getAllZs(Integer pageNum){
		   PageInfo p1=zsservice.getAllZs(pageNum);
		   
		  return p1;
	}
	@RequestMapping("/getAllZs")
		public @ResponseBody PageInfo<Map> getAllhf(Integer pageNum,String name){
			  return zsservice.getAllhf(pageNum, name);
		}
	

}
