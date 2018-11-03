package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Evection;
import com.aaa.bean.Overtime;
import com.aaa.bean.Recruit;
import com.aaa.service.OvertimeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Overtime")
public class OvertimeController {
	@Autowired
	OvertimeService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Overtime> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Overtime> list=service.getAll();
		  PageInfo<Overtime> info=new PageInfo<Overtime>(list);
	    	return info;
    }
	@RequestMapping("/detailInfo/{id}")
    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
		Overtime Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/detailInfo/OvertimeDetail";
    }
	//新增招聘申请
	@RequestMapping("/savePlay")
	public String savePlay(Overtime overtime){
		service.saveAndApproval(overtime);
		return "hcq/overtime";
	}
	//条件查询
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Overtime> queryBycriteria(Integer pageNum,Overtime off){
		  PageHelper.startPage(pageNum,13);
		  List<Overtime> list=null;
		  if(off.getStatus().equals("")||off.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(off);
		  }
		  PageInfo<Overtime> info=new PageInfo<Overtime>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		Overtime Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/OvertimeApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Overtime recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }

}
