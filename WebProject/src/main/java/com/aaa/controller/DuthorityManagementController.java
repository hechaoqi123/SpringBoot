package com.aaa.controller;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Visitonemodile;
import com.aaa.service.DuthorityManagementService;

@RestController
@RequestMapping("/DuthorityManagementController")
public class DuthorityManagementController {
	@Autowired
	DuthorityManagementService service;
	
	@RequestMapping("/insertVisitonemodile")
	public String insertVisitonemodile(Visitonemodile visitonemodile, MultipartFile file, HttpSession session) throws Exception {
		//防止文件名重复、获取后缀
		UUID fileName=UUID.randomUUID();
		String suffix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		//获取要输出的真实路
		String path=session.getServletContext().getRealPath("/upload/"+suffix);
		visitonemodile.setMimageurl("../upload/"+suffix);
		File outPath=new File(path+fileName+suffix);
		//执行文件上传
		file.transferTo(outPath);
		service.insertVisitonemodile(visitonemodile);
		return "成功插入";

	}
	@RequestMapping("/selectVisitonemodile")
	public List<Map> selectVisitonemodile(){
		
		List<Map> selectVisitonemodile = service.selectVisitonemodile();
		
		return selectVisitonemodile;
		
	}
}
