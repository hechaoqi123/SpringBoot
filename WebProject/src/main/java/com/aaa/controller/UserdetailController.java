package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Userdetail;
import com.aaa.service.UserdetailService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Userdetail;
import com.aaa.service.UserdetailService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/userdetail")
public class UserdetailController {
	@Autowired
	UserdetailService service;
	@RequestMapping("/getUserdetail")
   public String selectById(HttpSession session,Model model){
		Integer id=1;//此处应该从session中获取
		Userdetail user=service.getOne(1);
		model.addAttribute("user",user);
	    return "hcq/MyInfo";
   }
	@RequestMapping("/getAllUserdetail")
	@ResponseBody
   public PageInfo<Userdetail> getAll(Integer pageNum){
	   PageHelper.startPage(pageNum, 6);
	   List<Userdetail> users=service.getAll();
	   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
        return info;
  }
	@RequestMapping("/getAllUser")
	public @ResponseBody PageInfo getAllUserDetail(Integer pageNum){
		return service.getAllUserdetails(pageNum);
	}
	
	
	@RequestMapping("/getAllOne0")
    public @ResponseBody PageInfo getAllOne0(Integer pageNum,String dependence){
     return service.getAllOne0(pageNum, dependence);
    }
	
	 @RequestMapping("/getAllOne1")
     public @ResponseBody PageInfo getAllOne1(Integer pageNum,String dependence){
      return service.getAllOne1(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne2")
     public @ResponseBody PageInfo getAllOne2(Integer pageNum,String dependence){
      return service.getAllOne2(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne3")
     public @ResponseBody PageInfo getAllOne3(Integer pageNum,String dependence){
      return service.getAllOne3(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne4")
     public @ResponseBody PageInfo getAllOne4(Integer pageNum,String dependence){
      return service.getAllOne4(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne5")
     public @ResponseBody PageInfo getAllOne5(Integer pageNum,String dependence){
      return service.getAllOne5(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne6")
     public @ResponseBody PageInfo getAllOne6(Integer pageNum,String dependence){
      return service.getAllOne6(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne7")
     public @ResponseBody PageInfo getAllOne7(Integer pageNum,String dependence){
      return service.getAllOne7(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne8")
     public @ResponseBody PageInfo getAllOne8(Integer pageNum,String dependence){
      return service.getAllOne8(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne9")
     public @ResponseBody PageInfo getAllOne9(Integer pageNum,String dependence){
      return service.getAllOne9(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne10")
     public @ResponseBody PageInfo getAllOne10(Integer pageNum,String dependence){
      return service.getAllOne10(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne11")
     public @ResponseBody PageInfo getAllOne11(Integer pageNum,String dependence){
      return service.getAllOne11(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne12")
     public @ResponseBody PageInfo getAllOne12(Integer pageNum,String dependence){
      return service.getAllOne12(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne13")
     public @ResponseBody PageInfo getAllOne13(Integer pageNum,String dependence){
      return service.getAllOne13(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne14")
     public @ResponseBody PageInfo getAllOne14(Integer pageNum,String dependence){
      return service.getAllOne14(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne15")
     public @ResponseBody PageInfo getAllOne15(Integer pageNum,String dependence){
      return service.getAllOne15(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne16")
     public @ResponseBody PageInfo getAllOne16(Integer pageNum,String dependence){
      return service.getAllOne16(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne17")
     public @ResponseBody PageInfo getAllOne17(Integer pageNum,String dependence){
      return service.getAllOne17(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne18")
     public @ResponseBody PageInfo getAllOne18(Integer pageNum,String dependence){
      return service.getAllOne18(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne19")
     public @ResponseBody PageInfo getAllOne19(Integer pageNum,String dependence){
      return service.getAllOne19(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne20")
     public @ResponseBody PageInfo getAllOne20(Integer pageNum,String dependence){
      return service.getAllOne20(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne21")
     public @ResponseBody PageInfo getAllOne21(Integer pageNum,String dependence){
      return service.getAllOne21(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne22")
     public @ResponseBody PageInfo getAllOne22(Integer pageNum,String dependence){
      return service.getAllOne22(pageNum, dependence);
     }
	 @RequestMapping("/getAllOne23")
     public @ResponseBody PageInfo getAllOne23(Integer pageNum,String dependence){
      return service.getAllOne23(pageNum, dependence);
     }
	 
}
