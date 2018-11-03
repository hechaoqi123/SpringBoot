package com.aaa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Checking;
import com.aaa.mapper.MytransactionMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Mytransaction")
public class MytransactionController {
	
	@Autowired
	MytransactionMapper mapper;
	
	//我发起的事务
	@RequestMapping("/getRightData")
	@ResponseBody
	public PageInfo<Map> getRightData(Integer pageNum, String tableName, String uname){
		PageHelper.startPage(pageNum,13);
		Map m = new HashMap();
		m.put("tableName", tableName);
		m.put("principal", uname);
		List<Map> rightData = mapper.getRightData(m);
		PageInfo<Map> info=new PageInfo<Map>(rightData);
		return info;
	}
}
