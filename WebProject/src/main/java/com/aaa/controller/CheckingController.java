package com.aaa.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Checking;
import com.aaa.bean.Dimission;
import com.aaa.service.CheckingService;
import com.aaa.service.DimissionService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Checking")
public class CheckingController {
	@Autowired
	CheckingService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Checking> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,7);
		  List<Checking> list=service.getAll();
		  PageInfo<Checking> info=new PageInfo<Checking>(list);
    	return info;
    }
	//考勤信息录入:文件上传
	@RequestMapping("/savePlay")
	public String savePlay(Checking checking,@RequestParam("file") MultipartFile file,
			   HttpServletRequest request) throws IllegalStateException, IOException{
		//获取文后缀
		String suffix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		//生成唯一标识
		UUID uuid=UUID.randomUUID();
        //获取目录绝对路径
		String target=request.getSession().getServletContext().getRealPath("upload/checking/");
         File  targetFile=new File(target+uuid+suffix);
		 //执行上传
         file.transferTo(targetFile);
		  //将图片名封装进实体
         checking.setType(uuid+suffix);
          //进行持久化操作
         service.save(checking);
		return "hcq/check";
	}
	//考勤文件下载
	@RequestMapping("/down/{id}")
	public void fileDown(@PathVariable("id")Integer id,HttpServletRequest request,HttpServletResponse response) throws IOException{
		 Checking entity=service.selectByPrimaryKey(id);
		 //文件路径
		 String fileURL=entity.getType();
		 //自定义文件名
		 String Name=entity.getTheme()+entity.getType().substring(entity.getType().lastIndexOf("."));
		//设置编码格式
		 response.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=utf-8");
		//下载文件所在目录
		String folder = "upload/checking/";
		//通知浏览器以下载的方式打开
		response.addHeader("Content-type", "appllication/octet-stream");
		response.addHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(Name, "UTF-8"));
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
}
