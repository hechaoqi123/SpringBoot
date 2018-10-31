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
import com.aaa.bean.Visittwomodile;
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
		String path=session.getServletContext().getRealPath("/upload/"+fileName+suffix);
		visitonemodile.setMimageurl("../upload/"+fileName+suffix);
		File outPath=new File(path);
		//执行文件上传
		file.transferTo(outPath);
		service.insertVisitonemodile(visitonemodile);
		return "成功插入";
	}
	@RequestMapping("/insertVisittwomodile")
	public String insertVisittwomodile(Visittwomodile visittwomodile) throws Exception {
		service.insert(visittwomodile);
		return "成功插入";
	}
	@RequestMapping("/selectVisitonemodile")
	public List<Map> selectVisitonemodile(Integer uid){
		List<Map> selectVisitonemodile = service.selectVisitonemodile(uid);
		return selectVisitonemodile;
	}
	@RequestMapping("/selectVisittwomodile")
	public List<Map> selectVisittwomodile(Integer mOneId){
		List<Map> selectVisitonemodile = service.selectVisittwomodile(mOneId);
		return selectVisitonemodile;
	}
	@RequestMapping("/getMytransaction")
	public List<Map> getMytransaction(Integer mOneId){
		List<Map> getMytransaction = service.getMytransaction(mOneId);
		return getMytransaction;
	}
	@RequestMapping("/selectUserTowModile")
	public List<Map> selectUserTowModile(Integer uid) {
		return service.selectUserTowModile(uid);
	}
	@RequestMapping("/selectOneMTowModile")
	public List<Map> selectOneMTowModile(Integer uid) {
		return service.selectOneMTowModile(uid);
	}
	@RequestMapping("/towModileAllocation")
	public String towModileAllocation(Integer mTowId) {
		return "true";
	}

	
}
