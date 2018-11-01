package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Entryapply;
import com.aaa.bean.Official;
import com.aaa.bean.Recruit;
import com.aaa.service.EntryapplyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("entry")
public class EntryApplyController {
	@Autowired
	 EntryapplyService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Entryapply> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Entryapply> list=service.getAll();
		  PageInfo<Entryapply> info=new PageInfo<Entryapply>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detailInfo/{id}")
    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
		  Entryapply Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/detailInfo/entryDetail";
    }
	@RequestMapping("/savePlay")
	public String savePlay(Entryapply entryapply){
		service.saveAndApproval(entryapply);
		return "hcq/entryPosition";
	}
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Entryapply> queryBycriteria(Integer pageNum,Entryapply entry){
		  PageHelper.startPage(pageNum,13);
		  List<Entryapply> list=null;
		  if(entry.getStatus().equals("")||entry.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(entry);
		  }
		  PageInfo<Entryapply> info=new PageInfo<Entryapply>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		  Entryapply Apply = service.selectByPrimaryKey(pageNum);
		   model.addAttribute("apply", Apply);
	    	return "hcq/examination/entryapplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Entryapply  apply,String remark){
		  service.UpdateAndRemark(apply,remark);
	    	return "success";
    }
}
