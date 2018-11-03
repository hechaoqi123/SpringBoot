package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Baoxiao;
import com.aaa.bean.BaoxiaoUtil;
import com.aaa.bean.Baoxiaoitem;
import com.aaa.bean.CostManager;
import com.aaa.bean.CostUtil;
import com.aaa.bean.Disburse;
import com.aaa.bean.Official;
import com.aaa.mapper.BaoxiaoitemMapper;
import com.aaa.service.EBaoxiaoService;
import com.aaa.service.EBaoxiaoServiceImpl;
import com.aaa.service.EBaoxiaoitemService;
import com.aaa.service.DisburseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Baoxiao")
public class BaoxiaoController {
	@Autowired
	EBaoxiaoService service;
	@Autowired
	EBaoxiaoitemService itemService;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Baoxiao> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Baoxiao> list=service.getAll();
		  PageInfo<Baoxiao> info=new PageInfo<Baoxiao>(list);
    	return info;
    }
	
	//申请详情
	@RequestMapping("/detailInfo/{id}")
    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
		Baoxiao Apply=service.selectByPrimaryKey(pageNum);
		Baoxiaoitem record=new Baoxiaoitem();
		record.setBaoxiaoid(pageNum);
		List<Baoxiaoitem> items = itemService.select(record);
		  model.addAttribute("items",items);
		  model.addAttribute("apply", Apply);
	      return "hcq2/detailInfo/BaoxiaoDetail";
    }
/*	@RequestMapping("/savePlay")
	public String savePlay(Baoxiao disburse){
		service.save(disburse);
		return "hcq2/expense";
	}*/
	
	@RequestMapping("/save")
	public String save(Baoxiao cost,BaoxiaoUtil util){
		service.saveManager(cost,util.getItems());
		return "hcq2/expense";
	}
	//条件查询
		@ResponseBody
		@RequestMapping("/queryBycriteria")
	    public PageInfo<Baoxiao> queryBycriteria(Integer pageNum,Baoxiao off){
			  PageHelper.startPage(pageNum,13);
			  List<Baoxiao> list=null;
			  if(off.getStatus().equals("")||off.getStatus()==null){
				  list=service.getAll();
			  }else{
				  list=service.select(off);
			  }
			  PageInfo<Baoxiao> info=new PageInfo<Baoxiao>(list);
	    	return info;
	    }
		//申请详情
		@RequestMapping("/detail/{id}")
	    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
			Baoxiao Apply=service.selectByPrimaryKey(pageNum);
			Baoxiaoitem record=new Baoxiaoitem();
			record.setBaoxiaoid(pageNum);
			List<Baoxiaoitem> items = itemService.select(record);
			  model.addAttribute("items",items);
			  model.addAttribute("apply", Apply);
		    	return "hcq2/examination/BaoxiaoApplyExamination";
	    }
		//申请状态变更
		@RequestMapping("/update")
	    public @ResponseBody String update(Baoxiao recruit,String remark){
			  service.UpdateAndRemark(recruit,remark);
		    	return "success";
	    }
}
