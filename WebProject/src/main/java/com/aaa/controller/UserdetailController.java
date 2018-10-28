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

import com.aaa.bean.Dept;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.service.DeptService;
import com.aaa.service.UserdetailService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/userdetail")
public class UserdetailController {
	@Autowired
	UserdetailService service;
	@Autowired
	DeptService deptservice;
	@RequestMapping("/getUserdetail")
   public String selectById(HttpSession session,Model model){
		   //当前登陆用户信息
		    Users se=(Users) session.getAttribute("CurrentUser");
			Userdetail user=service.getOne(se.getUid());
			model.addAttribute("user",user);
	    return "hcq/MyInfo";
   }
    //获取员工详细信息：criteria不为空时代表修改操作
	@RequestMapping("/getDetailInfo")
    public String selectUserInfo(Integer id,Model model,String criteria){
    	Userdetail user=service.getOne(id);
		model.addAttribute("user",user);
		String dept=user.getDependence();
		Dept entity=deptservice.getDept(dept);
		Userdetail superUser=service.getOne(Integer.valueOf(entity.getDeptstate()));
		model.addAttribute("superUserName",superUser.getUsername());
		if(criteria!=null){
	    return "hcq/UserdetailUpdate";
		}
    	return "hcq/DetailInfo";
    }
	//分页查询
	@RequestMapping("/getAllUserdetail")
	@ResponseBody
   public PageInfo<Userdetail> getAll(Integer pageNum){
	   PageHelper.startPage(pageNum,13);
	   List<Userdetail> users=service.getAll();
	   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
        return info;
  }
	//查询各种类别数量
	@RequestMapping("/classify")
	@ResponseBody
	  public List<Userdetail> getAll(Userdetail user){
		    return service.getAll();
	  }
	//条件检索
	@RequestMapping("/queryByCriteria")
	@ResponseBody
	public PageInfo<Userdetail> queryByCriteria(Integer pageNum,String status){
		  PageHelper.startPage(pageNum,13);
		   List<Userdetail> users=service.queryByCriteria(status);
		   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
	        return info;
	}
	//添加员工信息
	@RequestMapping("/save")
	public String save(Userdetail user){
		service.save(user);
		return "hcq/staff";
	}
	//删除员工信息
	@RequestMapping("/remove")
	public String remove(Integer userId){
		service.remove(userId);
		return "success";
	}
	//修改员工信息
	@RequestMapping("/udate")
	public String update(Userdetail user,Model model){
		service.update(user);
		return selectUserInfo(user.getDetailid(),model,null);
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
