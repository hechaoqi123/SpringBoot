package com.aaa.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.Usersandmytransaction;
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
	public List<Map> getMytransaction(Integer mOneId, Integer uid){
		Map m = new HashMap();
		m.put("uid", uid);
		m.put("mOneId", mOneId);
		System.out.println(m.toString());
		List<Map> getMytransaction = service.getMytransaction(m);
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
	//查询当前事务拥有访问权限的角色和!(查询当前事务拥有访问权限的角色)
	@RequestMapping("/getTran")
	public Map<String,List> getTran(Integer trid,String pname){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("trid",trid);
		m.put("pname",pname);
		List<Map> trueTrans = service.TrueTran(m);
		List<Map> falseTrans = service.FalseTran(m);
		Map<String,List> map = new HashMap<String, List>();
		map.put("trueTrans", trueTrans);
		map.put("falseTrans", falseTrans);
		return map;
	}
	//增加删除访问角色
	@RequestMapping("addTran")
	public String addTran(Usersandmytransaction uat){
		System.out.println(uat);
		service.addTran(uat);
		return "true";
	}
	@RequestMapping("delTran")
	public String delTran(Usersandmytransaction uat){
		System.out.println(uat);
		service.delTran(uat);
		return "true";
	}
	
}
