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
import com.aaa.service.OfficialService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
@RequestMapping("Official")
public class OfficialController {
	@Autowired
	OfficialService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Official> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Official> list=service.getAll();
		  PageInfo<Official> info=new PageInfo<Official>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detailInfo/{id}")
    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
		Official Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/detailInfo/officialDetail";
    }
	@RequestMapping("/savePlay")
	public String savePlay(Official official){
		service.saveAndApproval(official);
		return "hcq/official";
	}
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Official> queryBycriteria(Integer pageNum,Official off){
		  PageHelper.startPage(pageNum,13);
		  List<Official> list=null;
		  if(off.getStatus().equals("")||off.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(off);
		  }
		  PageInfo<Official> info=new PageInfo<Official>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		Official Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/officialApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Official recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }
}
