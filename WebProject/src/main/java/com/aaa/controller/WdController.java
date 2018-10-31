package com.aaa.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Wd;
import com.aaa.service.WdService;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/Wd")
public class WdController {
	  @Autowired
	  WdService wdservice; 
	//文件上传
	@RequestMapping("/AddWd")
	public String savePlay(Wd  wd,BindingResult bindingResult ,@RequestParam("file") MultipartFile file,
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
			wd.setWdaccessory(uuid+suffix);
		}
		wdservice.addWd(wd);
		return "xgp/AddDocument";
	}
	//查询所有

    @Temporal(TemporalType.TIMESTAMP)  
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	@RequestMapping("getAllWd")
	public @ResponseBody PageInfo<Wd> getAllWd(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Wd> list=wdservice.getAllWd();
		  PageInfo<Wd> info=new PageInfo<Wd>(list);
	  return info;	
	}
	@RequestMapping("getAllone1")
	public @ResponseBody PageInfo<Wd> getAllOne1(Integer pageNum,String wdclassify){
		return wdservice.getAllOne1(pageNum, wdclassify);
	}
	@RequestMapping("getAllone2")
	public @ResponseBody PageInfo<Wd> getAllOne2(Integer pageNum){
		return wdservice.getAllone2(pageNum);
	}
	@RequestMapping("getAllone3")
	public @ResponseBody PageInfo<Wd> getAllOne3(Integer pageNum){
		
		return wdservice.getAllone3(pageNum);
	}
	@RequestMapping("getAllone4")
	public @ResponseBody PageInfo<Wd> getAllOne4(Integer pageNum){
		return wdservice.getAllone4(pageNum);
	}
	
	//考勤文件下载
		@RequestMapping("/down")
		public void fileDown(Integer id,HttpServletRequest request,HttpServletResponse response) throws IOException{
			 Wd entity=wdservice.getOne(id);
			 System.out.println(id+"王扫枪");
			 //文件路径
			 String fileURL=entity.getWdaccessory();
			//设置编码格式
			 response.setCharacterEncoding("UTF-8");
			 response.setContentType("text/html;charset=utf-8");
			//下载文件所在目录
			String folder = "upload/xgp/";
			//通知浏览器以下载的方式打开
			response.addHeader("Content-type", "appllication/octet-stream");
			response.addHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(fileURL, "UTF-8"));
			//通知文件流读取文件
			InputStream in = request.getSession().getServletContext().getResourceAsStream(folder+fileURL);
			//获取response对象的输出流
			OutputStream out = response.getOutputStream();
			byte[] buffer = new byte[1024];
			int len;
			//循环取出流中的数据
			while((len = in.read(buffer)) != -1){
				out.write(buffer,0,len);
			}
		}
	
		@RequestMapping("getxq")
		public String getAll(int id,Model m){
			List<Map> list=wdservice.getAll(id);
			m.addAttribute("list",list);
			
			return "xgp/SelectDocument";
		}

}
