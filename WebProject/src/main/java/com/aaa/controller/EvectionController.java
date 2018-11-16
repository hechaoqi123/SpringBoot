package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Entryapply;
import com.aaa.bean.Evection;
import com.aaa.bean.Official;
import com.aaa.service.evectionService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Evection")
public class EvectionController {
	@Autowired
	evectionService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Evection> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Evection> list=service.getAll();
		  PageInfo<Evection> info=new PageInfo<Evection>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Evection evection){
		service.saveAndApproval(evection);
		return "hcq/checking";
	}
	//条件查询
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Evection> queryBycriteria(Integer pageNum,Evection off){
		  PageHelper.startPage(pageNum,13);
		  List<Evection> list=null;
		  if(off.getStatus().equals("")||off.getStatus()==null){
			  list=service.getAll();
		  }else if(off.getDutypeople()!=null){
			  String status=off.getStatus();
			  off.setStatus(off.getDutypeople());
			  off.setDutypeople(null);
			  list=service.select(off);
			  off.setStatus(status);
			  list.addAll(service.select(off));
		  }else{
			  list=service.select(off);
		  }
		  PageInfo<Evection> info=new PageInfo<Evection>(list);
    	return info;
    }
	@RequestMapping("/detailInfo/{id}")
    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
		  Evection Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/EvectionApplyExamination";
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		Evection Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/EvectionApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Evection recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }
}
