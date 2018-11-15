package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Carapply;
import com.aaa.bean.Metting;
import com.aaa.bean.Reserve;
import com.aaa.service.ReserveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
	@Autowired
	ReserveService service;
	@RequestMapping("/getAllReserve")
	@ResponseBody
	public PageInfo<Reserve> getAll(Integer pageNum){
	   PageHelper.startPage(pageNum,10);
	   List<Reserve> reserve=service.getAll();
	   PageInfo<Reserve> pageInfo=new PageInfo<Reserve>(reserve);
       return pageInfo;
  }
	@RequestMapping("/reserveAdd")
	public String insertReserve(Reserve reserve){
		service.insertReserve(reserve);
		return "gm/reserve";
	}
	
	@RequestMapping("/getDept")
	@ResponseBody
	public List<Map> getDept(){
		return service.getDept();
	}
	@RequestMapping("/getMetting")
	@ResponseBody
	public List<Map> getMetting(){
		return service.getMetting();
	}
	@RequestMapping("/getReserveDept")
	@ResponseBody
	public List<Map> getReserveDept(){
		return service.getReserveDept();
	}
}
