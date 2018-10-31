/*package com.aaa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.service.UsersandmytransactionService;

@Controller
@RequestMapping("Usersandmytransaction")
public class UsersandmytransactionController {
	@Autowired
	UsersandmytransactionService service;
	
	
	@RequestMapping("/getmytransaction")
	@ResponseBody
	public Map<String,List> postUaer(Integer trid,String pname){
		System.out.println(trid+"----------------------"+pname);
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("trid",trid);
		m.put("pname",pname);
		List<Map> trueTran = service.TrueTran(m);
		List<Map> falseTran = service.FalseTran(m);
		Map<String,List> map = new HashMap<String, List>();
		map.put("trueTran", trueTran);
		map.put("falseTran", falseTran);
		return map;
	}
}
*/