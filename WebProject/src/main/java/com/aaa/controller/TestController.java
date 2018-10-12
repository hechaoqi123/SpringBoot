package com.aaa.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Visitonemodile;
import com.aaa.service.UserService;

@RestController
public class TestController{
	@Autowired
	private UserService userServiceImpl;
@RequestMapping("test")
public String test(){
return userServiceImpl.getAllUser().toString();
}
@RequestMapping("vueTest")
@ResponseBody
public String vueTest(Visitonemodile visitonemodile){
	System.out.println(visitonemodile);
	return "hahahahahah";
}

@RequestMapping("postTest")
@ResponseBody
public List postTest(String a,Map<Object, Object> c){
	System.out.println(a+"aaa_______________________________________");
	System.out.println(c);
	List list = new ArrayList();
	list.add("只是");
	list.add("一个");
	list.add("list");
	return list;
}

@RequestMapping(value = "submit")
public String submit(Visitonemodile visitonemodile, MultipartFile file, HttpSession session) throws Exception {
	//String mname, String mdescribe, Integer msequnce, String mimageurl
	
	System.out.println(file);
	//防止文件名重复、获取后缀
	UUID fileName=UUID.randomUUID();
	String suffix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
	//获取要输出的真实路
	String path=session.getServletContext().getRealPath("/upload/"+suffix);
	visitonemodile.setMimageurl("../upload/"+suffix);
	System.out.println(visitonemodile);
	File outPath=new File(path+fileName+suffix);
	System.out.println(outPath);
	//执行文件上传
	file.transferTo(outPath);
		
	return "aaaa";

}


}
