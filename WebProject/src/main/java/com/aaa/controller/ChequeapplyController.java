package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Chequeapply;
import com.aaa.bean.CostManager;
import com.aaa.bean.Leaveapply;
import com.aaa.service.ChequeapplySevice;
import com.aaa.service.LeaveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Chequeapply")
public class ChequeapplyController {
	@Autowired
	ChequeapplySevice service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Chequeapply> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Chequeapply> list=service.getAll();
		  PageInfo<Chequeapply> info=new PageInfo<Chequeapply>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Chequeapply leave){
		service.saveAndApproval(leave);
		return "hcq2/BillManager";
	}
	//条件查询
		@ResponseBody
		@RequestMapping("/queryBycriteria")
	    public PageInfo<Chequeapply> queryBycriteria(Integer pageNum,Chequeapply off){
			  PageHelper.startPage(pageNum,13);
			  List<Chequeapply> list=null;
			  if(off.getStatus().equals("")||off.getStatus()==null){
				  list=service.getAll();
			  }else{
				  list=service.select(off);
			  }
			  PageInfo<Chequeapply> info=new PageInfo<Chequeapply>(list);
	    	return info;
	    }
		//申请详情
		@RequestMapping("/detail/{id}")
	    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
			Chequeapply Apply=service.selectByPrimaryKey(pageNum);
			  model.addAttribute("apply", Apply);
		    	return "hcq2/examination/BillManagerApply";
	    }
		//申请状态变更
		@RequestMapping("/update")
	    public @ResponseBody String update(Chequeapply recruit,String remark){
			  service.UpdateAndRemark(recruit,remark);
		    	return "success";
	    }
}
