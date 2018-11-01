package com.aaa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	@RequestMapping(value="/getCar",method=RequestMethod.GET)//value="/addMetting",method=RequestMethod.POST
		   public String selectById(Integer id,Model model){			
		        Car car=service.selectCar(id);
				model.addAttribute("car",car);
			    return "gm/carupdate";
		   }
	      @RequestMapping("/getAllCar")
	      @ResponseBody
	      public PageInfo<Car> getAll(Integer pageNum){
		     PageHelper.startPage(pageNum,10);
		     List<Car> car=service.getAll();
		     PageInfo<Car> pageInfo=new PageInfo<Car>(car);
	         return pageInfo;
	      }
			@RequestMapping(value="/addCar",method=RequestMethod.POST)
			@ResponseBody
		    public String indertCar(Car car,Model model){
			   service.inserCar(car);
			   return ".jsp";
			}
			@RequestMapping(value="/updateCar",method=RequestMethod.POST)
			public String updateCar(Model model,Car car){
				service.updateCar(car);
				return "gm/car";
	        }
			@RequestMapping(value="/deleteCar/{id}")
			public String deleteCar(@PathVariable("id") Integer id){
			   service.deleteCar(id); 
	           return "gm/car";    
	        }
}
