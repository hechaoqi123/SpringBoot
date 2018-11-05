package com.aaa.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.bean.CostManager;
import com.aaa.bean.Official;
import com.aaa.bean.Paygrantapply;
import com.aaa.bean.Recruit;
import com.aaa.service.PaygrantapplyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@RequestMapping("Paygrantapply")
@Controller//薪资发放申请
public class PaygrantapplyController {
	@Autowired
	PaygrantapplyService service;
	//新增薪资发放申请
	@RequestMapping("/save")
	public String save(Paygrantapply apply,@RequestParam("file") MultipartFile file,
			   HttpServletRequest request) throws IllegalStateException, IOException, InvalidFormatException{
		String suffix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		UUID uuid=UUID.randomUUID();
		String target=request.getSession().getServletContext().getRealPath("upload/performance/");
         File  targetFile=new File(target+uuid+suffix);
         file.transferTo(targetFile);
         apply.setUrl(target+uuid+suffix);
		service.saveOfFile(apply);
		return "hcq2/PayManager";
	}
	@RequestMapping("/getAll")
	public @ResponseBody PageInfo<Paygrantapply> getAll(Integer number){
		PageHelper.startPage(number, 13);
		PageInfo<Paygrantapply> info=new PageInfo<Paygrantapply>(service.getAll());
		return info;
	}
	//薪资发放详情
		@RequestMapping("/detailInfo/{id}")
	    public String queryByDetailInfo(@PathVariable("id")Integer pageNum,Model model){
			Paygrantapply Apply=service.selectByPrimaryKey(pageNum);
			  model.addAttribute("apply", Apply);
		    	return "hcq2/detailInfo/PayApplyDetail";
	    }
		
	//条件查询
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Paygrantapply> queryBycriteria(Integer pageNum,Paygrantapply off){
		  PageHelper.startPage(pageNum,13);
		  List<Paygrantapply> list=null;
		  if(off.getStatus().equals("")||off.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(off);
		  }
		  PageInfo<Paygrantapply> info=new PageInfo<Paygrantapply>(list);
    	return info;
    }
	//审批
		@RequestMapping("/detail/{id}")
	    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
			Paygrantapply Apply=service.selectByPrimaryKey(pageNum);
			  model.addAttribute("apply", Apply);
		    	return "hcq2/examination/PayApplyDetail";
	    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Paygrantapply recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }
	
	
}
