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
import com.aaa.service.MettingService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("metting")
public class MettingController {
	@Autowired
	MettingService service;	
	@RequestMapping("/getMetting")
	@ResponseBody
	   public String selectById(Integer id,Model model){
			Metting metting=service.selectMetting(id);
			model.addAttribute("metting",metting);
		    return "gm/metting";
	   }
		@RequestMapping("/getAllMetting")
		@ResponseBody
		public PageInfo<Metting> getAll(Integer pageNum){
		   PageHelper.startPage(pageNum,10);
		   List<Metting> metting=service.getAll();
		   PageInfo<Metting> pageInfo=new PageInfo<Metting>(metting);
	       return pageInfo;
	  }
		@RequestMapping(value="/addMetting",method=RequestMethod.POST)
		@ResponseBody
	    public String indertMetting(Metting metting,Model model){
		   service.insertMetting(metting);
		   return ".jsp";
		}
		@RequestMapping(value="/updateMetting",method=RequestMethod.POST)
		@ResponseBody
		public String updateMetting(Model model,Metting metting){
		   if(service.updateMetting(metting)){  
			   metting = service.selectMetting(metting.getMid());  
                model.addAttribute("metting", metting);  
                return ".jsp";  
            } 
           return "/error";  
        }
		@RequestMapping(value="/deleteMetting",method=RequestMethod.POST)
		@ResponseBody
		public String deleteMetting(Model model,Integer id){
		   service.deleteMetting(id); 
           return ".jsp";    
        }
}
