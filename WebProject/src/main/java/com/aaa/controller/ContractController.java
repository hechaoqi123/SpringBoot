package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Contract;
import com.aaa.service.ContractService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("contract")
public class ContractController {
	@Autowired
	ContractService service;
	@RequestMapping("/contractInsert")
	public void contractInsert(Contract ct){
		service.insert(ct);
		System.out.println("添加成功！");
		
	}
	@RequestMapping("/selectAll")
	public @ResponseBody PageInfo<Map> selectAll(Integer pageNum,String key){
		PageHelper.startPage(pageNum,8);
		List<Map> contract=service.selectAll(key);
		System.out.println(service.selectAll(key));
		PageInfo<Map> info=new PageInfo<Map>(contract);
		System.out.println(info.getList());
		System.out.println("完成！");
		return info;
	}
	@RequestMapping("/contractQuery")
	public String contractQuery(Integer cid,Model model){
		System.out.println(111);
		List<Map<String,String>> query = service.query(cid);
		System.out.println(query.toString());
		model.addAttribute("contract", query);
		System.out.println("完成");
		return "mh/ContractTailed";
	}
	@RequestMapping("/updateid")
	public String updateid(Integer ctid){
		service.updateid(ctid);
		System.out.println("成功");
		return "mh/AllContract";
	}
}
