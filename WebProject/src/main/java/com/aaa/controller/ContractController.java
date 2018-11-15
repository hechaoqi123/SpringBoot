package com.aaa.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Contract;
import com.aaa.bean.Users;
import com.aaa.service.ContractService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("contract")
public class ContractController {
	@Autowired
	ContractService service;
	@RequestMapping("/contractInsert")
	public void contractInsert(Contract ct,HttpSession session){
		service.insert(ct);
		/*try {
			System.out.println(service.selectMaxId()+"1111");
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		System.out.println(1122);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		System.out.println(df.format(new Date()));
		Calendar   c   =   Calendar.getInstance();//可以用set()对每个时间域单独修改    
		  int   year   =   c.get(Calendar.YEAR);    
		//一般month都需要+1才表示当前月份  
		  int   month   =   c.get(Calendar.MONTH);    
		  int   date   =   c.get(Calendar.DATE);
		  Integer did=((Users)session.getAttribute("CurrentUser")).getUid();
			//String name=((Users)session.getAttribute("CurrentUser")).getUname();
		System.out.println("OA-"+year+(month+1)+date+"-"+service.selectMaxId());
		try {
			service.updateContractId("OA-"+year+(month+1)+date+"-"+service.selectMaxId(), did, service.selectMaxId());

		} catch (Exception e) {
			e.printStackTrace();
		}
		//List<Map> list=service.selectHt();
		System.out.println("添加成功！");
		
	}
	@RequestMapping("/selectAll")
	public @ResponseBody PageInfo<Map> selectAll(Integer pageNum,String key){
		PageHelper.startPage(pageNum,8);
		List<Map> contract=service.selectAll(key);
		System.out.println(service.selectAll(key));
		PageInfo<Map> info=new PageInfo<Map>(contract);
		System.out.println(info.getList());
		System.out.println("完成！");
		return info;
	}
	@RequestMapping("/contractQuery")
	public String contractQuery(Integer cid,Model model){
		List<Map<String,String>> query = service.query(cid);
		System.out.println(query.toString());
		model.addAttribute("contract", query);
		System.out.println("完成");
		return "mh/ContractTailed";
	}
	@RequestMapping("/contractQueryes")
	public String contractQueryes(Integer cid,Model model){
		List<Map<String,String>> query = service.query(cid);
		System.out.println(query.toString());
		model.addAttribute("contract", query);
		System.out.println("完成");
		return "mh/ContractTaileds";
	}
	@RequestMapping("/contractQuerys")
	public String contractQuerys(Integer cid,Model model){
		List<Map<String,String>> query = service.query(cid);
		System.out.println(query.toString());
		model.addAttribute("contract", query);
		System.out.println("完成");
		return "mh/ContractUpdate";
	}
	@RequestMapping("/update")
	public String update(Contract ct){
		System.out.println(ct);
		service.update(ct);
		System.out.println("成功");
		return "mh/ContractState";
	}
	@RequestMapping("/updateid")
	public String updateid(Integer ctid){
		System.out.println("123");
		service.updateid(ctid);
		System.out.println("成功");
		return "mh/ContractState";
	}
	@RequestMapping("/selectOneContract")
	public String selectOneContract(Integer pageNum,Integer cid,Model model){
		PageHelper.startPage(pageNum,8);
		List<Map> contract=service.selectOneContract(cid);
		System.out.println(service.selectOneContract(cid));
		PageInfo<Map> info=new PageInfo<Map>(contract);
		model.addAttribute("contract", contract);
		System.out.println(info.getList());
		System.out.println("完成！");
		return "mh/CustomerSelectOne";
	}
	@RequestMapping("/select")
	public @ResponseBody List<Contract> select(Model model){
		List<Contract> list=service.select();
		model.addAttribute("list", list);
		return list;
	}
	@RequestMapping("/selectAllContract")
	public @ResponseBody List<Map> selectAllContract(Integer cid){
		
		List<Map> contracts=service.selectAllContract(cid);
		
		return contracts;
	}
	@RequestMapping("/selectContractState")
	public @ResponseBody PageInfo<Map> selectContractState(Integer pageNum){
		
		PageHelper.startPage(pageNum,8);
		List<Map> contract=service.selectContractState();
		PageInfo<Map> info=new PageInfo<Map>(contract);
		System.out.println(info.getList());
		System.out.println("完成！");
		return info;
		
	}
	@RequestMapping("/contractHu")
	public String contractHu(Integer cid,Model model){
		List<Map<String,String>> query = service.query(cid);
		System.out.println(query.toString());
		model.addAttribute("contract", query);
		System.out.println("完成");
		return "mh/incomeRegister";
	}
}
