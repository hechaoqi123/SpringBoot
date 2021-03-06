package com.aaa.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.base.EmailUtil;
import com.aaa.bean.Checking;
import com.aaa.bean.Userdetail;
import com.aaa.bean.leaveResource;
import com.aaa.service.UserdetailService;
import com.aaa.service.leaveResourceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("leaveResource")
public class leaveResourceController {
	@Autowired
	leaveResourceService service;
	@Autowired
	UserdetailService Userservice;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<leaveResource> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<leaveResource> list=service.getAll();
		  PageInfo<leaveResource> info=new PageInfo<leaveResource>(list);
    	return info;
    }
	//考勤信息录入:文件上传
	@RequestMapping("/savePlay")
	public String savePlay(leaveResource leaveResource,@RequestParam("file") MultipartFile file,
			   HttpServletRequest request) throws Exception{
			//上传文件
		          String suffix="";
	              int index = file.getOriginalFilename().lastIndexOf(".");
		          if(index!=-1){
		        	  suffix=file.getOriginalFilename().substring(index);
		          }     
			UUID uuid=UUID.randomUUID();
			String target=request.getSession().getServletContext().getRealPath("upload/leaveResource/");
			File  targetFile=new File(target+uuid+suffix);
			file.transferTo(targetFile);
			//保存记录
		    leaveResource.setResourceurl(uuid+suffix);
			service.save(leaveResource);
			//发送邮件
			Session session=EmailUtil.getSession();
		    String subject="调休资源";
	        String body="调休资源表已更新，请注意查收";
	        List<Userdetail> users=Userservice.getOfficeUser();
	        List<String> list=new ArrayList<String>();
	        for (Userdetail userdetail : users) {
	        	String email=userdetail.getEmail();
	        	if(email!=null&&email.length()>5){
	        		String suff=userdetail.getEmail().substring(email.length()-6);
	        		if(suff.equals("qq.com")){
	        			list.add(email);
	        		}
	        	}
			}
	        String[] receiveMail=new String[list.size()];
	        list.toArray(receiveMail);
	        String fileName="调休资源表"+suffix;
	        String fileUrl=target+uuid+suffix;
            MimeMessage message=EmailUtil.createMultipartEmail(subject, body, fileUrl, fileName, receiveMail, session);
            EmailUtil.SendEmail(session, message);
            return "hcq/LeaveResources";
	}
	//文件下载
	@RequestMapping("/down/{id}")
	public void fileDown(@PathVariable("id")Integer id,HttpServletRequest request,HttpServletResponse response) throws IOException{
		leaveResource leaveResource=service.getOne(id);
		 //文件路径
		 String fileURL=leaveResource.getResourceurl();
		 //自定义文件名
		 String Name=leaveResource.getField1()+leaveResource.getResourceurl().substring(leaveResource.getResourceurl().lastIndexOf("."));
		//设置编码格式
		 response.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=utf-8");
		//下载文件所在目录
		String folder = "upload/leaveResource/";
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
