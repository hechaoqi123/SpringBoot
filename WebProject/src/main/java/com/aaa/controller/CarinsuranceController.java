package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Carinsurance;
import com.aaa.service.CarinsuranceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("carinsurance")
public class CarinsuranceController {
	@Autowired
	CarinsuranceService service;
	@ResponseBody
	@RequestMapping("/getAllCarinsurance")
    public PageInfo<Carinsurance> getAll(Integer pageNum){
		PageHelper.startPage(pageNum,10);
		List<Carinsurance> list=service.getAll();		
	    PageInfo<Carinsurance> info=new PageInfo<Carinsurance>(list);
    	return info;
    }
	@RequestMapping("/save")
	public String save(Carinsurance car){
 		 service.save(car);
		return "gm/carinsurance";
	}
   /* public List<Map> getCarinsuranceCar(){
		List<Map> list=service.getCarinsuranceCar();
	    //PageInfo<Carinsurance> info=new PageInfo<Carinsurance>();
    	return list;
    }*/

}
