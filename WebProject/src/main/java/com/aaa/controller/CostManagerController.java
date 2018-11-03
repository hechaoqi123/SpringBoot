package com.aaa.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Cost;
import com.aaa.bean.CostManager;
import com.aaa.bean.CostUtil;
import com.aaa.bean.Dimission;
import com.aaa.bean.Evection;
import com.aaa.bean.Official;
import com.aaa.service.CostManagerService;
import com.aaa.service.CostService;
import com.aaa.service.DeptService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("CostManager")
public class CostManagerController {
	@Autowired
	CostManagerService service;
	@Autowired
	CostService costService;
	@RequestMapping("/save")
	public String save(CostManager cost,CostUtil util){
		service.saveCostManager(cost,util.getCosts());
		return "hcq2/costManager";
	}
	 @RequestMapping("/getAll")
	 @ResponseBody	
	  public PageInfo<CostManager> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<CostManager> list=service.getAll();
		  PageInfo<CostManager> info=new PageInfo<CostManager>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detailInfo/{id}")
    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
		CostManager Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
		  Cost cost=new Cost();
		  cost.setManagerid(pageNum);
		  List<Cost> list=costService.select(cost);
		  Integer[] numbers={0,0,0,0,0};
		  for(int i=0;i<list.size();i++){
			  Cost c=list.get(i);
			  if(c.getField1()!=null&&!c.getField1().equals("")){
				  numbers[0]=numbers[0]+Integer.valueOf(c.getField1());
			  }
			  if(c.getField2()!=null&&!c.getField2().equals("")){
				  numbers[1]=numbers[1]+Integer.valueOf(c.getField2());
			  }
			  if(c.getField3()!=null&&!c.getField3().equals("")){
				  numbers[2]=numbers[2]+Integer.valueOf(c.getField3());
			  }
			  if(c.getField4()!=null&&!c.getField4().equals("")){
				  numbers[3]=numbers[3]+Integer.valueOf(c.getField4());
			  }
			  if(c.getField5()!=null&&!c.getField5().equals("")){
				  numbers[4]=numbers[4]+Integer.valueOf(c.getField5());
			  }
		  }
		  model.addAttribute("items", list);
		  model.addAttribute("numbers", numbers);
	    	return "hcq2/detailInfo/CostManagerDetail";
    }
	//条件查询
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<CostManager> queryBycriteria(Integer pageNum,CostManager off){
		  PageHelper.startPage(pageNum,13);
		  List<CostManager> list=null;
		  if(off.getStatus().equals("")||off.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(off);
		  }
		  PageInfo<CostManager> info=new PageInfo<CostManager>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		CostManager Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
		  Cost cost=new Cost();
		  cost.setManagerid(pageNum);
		  List<Cost> list=costService.select(cost);
		  Integer[] numbers={0,0,0,0,0};
		  for(int i=0;i<list.size();i++){
			  Cost c=list.get(i);
			  if(c.getField1()!=null&&!c.getField1().equals("")){
				  numbers[0]=numbers[0]+Integer.valueOf(c.getField1());
			  }
			  if(c.getField2()!=null&&!c.getField2().equals("")){
				  numbers[1]=numbers[1]+Integer.valueOf(c.getField2());
			  }
			  if(c.getField3()!=null&&!c.getField3().equals("")){
				  numbers[2]=numbers[2]+Integer.valueOf(c.getField3());
			  }
			  if(c.getField4()!=null&&!c.getField4().equals("")){
				  numbers[3]=numbers[3]+Integer.valueOf(c.getField4());
			  }
			  if(c.getField5()!=null&&!c.getField5().equals("")){
				  numbers[4]=numbers[4]+Integer.valueOf(c.getField5());
			  }
		  }
		  model.addAttribute("items", list);
		  model.addAttribute("numbers", numbers);
	    	return "hcq2/examination/CostManagerApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(CostManager recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }
}
