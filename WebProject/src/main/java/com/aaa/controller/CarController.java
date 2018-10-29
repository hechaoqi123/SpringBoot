package com.aaa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Car;
import com.aaa.bean.Metting;
import com.aaa.bean.Userdetail;
import com.aaa.service.CarService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("car")
public class CarController {

	@Autowired
	CarService service;
	/*@RequestMapping("/getCar")
	   public String selectById(HttpSession session,Model model){
			Integer id=1;//此处应该从session中获取
			Car user=service.getOne(1);
			model.addAttribute("user",user);
		    return "gm/car";
	   }*/
		@RequestMapping("/getAllCar")
		@ResponseBody
	   public PageInfo<Car> getAll(Integer pageNum){
		   PageHelper.startPage(pageNum, 10);
		   List<Car> car=service.getAll();
		   PageInfo<Car> info=new PageInfo<Car>(car);
	       return info;
	  }
		@RequestMapping(value="/addCar",method=RequestMethod.POST)
		@ResponseBody
	    public String indertMetting(Car car,Model model){
		   service.insertCar(car);
		   return "getAllCar.jsp";
		}
		@RequestMapping(value="/updatecar",method=RequestMethod.POST)
		@ResponseBody
		public String updateMetting(Model model,Car car){
		   service.updateCar(car); 
           return ".jsp";    
        }
}
