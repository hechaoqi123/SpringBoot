package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Dimission;
import com.aaa.bean.Official;
import com.aaa.bean.transfer;
import com.aaa.service.DimissionService;
import com.aaa.service.TransferService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Dimission")
public class DimissionController {
	@Autowired
	DimissionService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Dimission> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Dimission> list=service.getAll();
		  PageInfo<Dimission> info=new PageInfo<Dimission>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Dimission dimission){
		service.saveAndApproval(dimission);
		return "hcq/dimission";
	}
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Dimission> queryBycriteria(Integer pageNum,Dimission entry){
		  PageHelper.startPage(pageNum,13);
		  List<Dimission> list=null;
		  if(entry.getStatus().equals("")||entry.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(entry);
		  }
		  PageInfo<Dimission> info=new PageInfo<Dimission>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		Dimission Apply = service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/DimissionApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Dimission recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }
}
