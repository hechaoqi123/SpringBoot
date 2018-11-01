package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Entryapply;
import com.aaa.bean.Overtime;
import com.aaa.bean.Performance;
import com.aaa.service.PerformanceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Performance")
public class PerformanceController {
	@Autowired
	PerformanceService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Performance> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Performance> list=service.getAll();
		  PageInfo<Performance> info=new PageInfo<Performance>(list);
	    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Performance performance){
		service.saveAndApproval(performance);
		return "hcq/performance";
	}
	@RequestMapping("/detailInfo/{id}")
    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
		Performance Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/detailInfo/PerformanceDetail";
    }
	//条件查询
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Performance> queryBycriteria(Integer pageNum,Performance off){
		  PageHelper.startPage(pageNum,13);
		  List<Performance> list=null;
		  if(off.getStatus().equals("")||off.getStatus()==null){
			  list=service.getAll();
		  }else{
			  if(off.getType().equals("")){
				  off.setType(null);
			  }
			  list=service.select(off);
		  }
		  PageInfo<Performance> info=new PageInfo<Performance>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		Performance Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/PersonnelApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Performance recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }

}
