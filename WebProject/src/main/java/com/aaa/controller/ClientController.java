package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Client;
import com.aaa.bean.Userdetail;
import com.aaa.service.ClientService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.sf.jsqlparser.util.AddAliasesVisitor;

@Controller
@RequestMapping("client")
public class ClientController {
	@Autowired
	ClientService service;
	@RequestMapping("/clientInsert")
	public void clientInsert(Client c){
		System.out.println(111);
		service.insert(c);
		System.out.println(222);
	}
	@RequestMapping("/clientOne")
	public String clientOne(int cid,Model model){
		
		Client client=service.getone(cid);
		model.addAttribute("client",client);
		return "mh/CustomerDetailed";
	}
	@RequestMapping("/clientOnes")
	public String clientOnes(int cid,Model model){
		
		Client client=service.getone(cid);
		System.out.println(client.getAddress());
		System.out.println(client.getClientid());
		System.out.println(client.getClientbank());
		System.out.println(client.getClientclassify());
		System.out.println(client.getCity());
		model.addAttribute("client",client);
		return "mh/CustomerDeUpdate";
	}
	@RequestMapping("/clientUpdate")
	public String clientUpdate(Client c){
		System.out.println(c.getCity()+"clclcl");
		service.update(c);
		System.out.println("修改成功");
		return "mh/Allcustomers";
	}
	@RequestMapping("/clientSelect")
	public @ResponseBody List<Client> clientSelect(){
		//PageHelper.startPage(pageNum, 6);
		List<Client> client=service.select();
		//PageInfo<Client> info=new PageInfo<Client>(client);
		return client;
	}
	
	@RequestMapping("/clientSelectBy")
	
	public @ResponseBody PageInfo<Client> clientSelectBy(Integer pageNum){
		PageHelper.startPage(pageNum, 8);
		List<Client> client=service.selectAll();
		PageInfo<Client> info=new PageInfo<Client>(client);
		return info;
	}
	
	
	@RequestMapping("/clientDelete")
	public String clientDelete(int cid){
		service.delete(cid);
		System.out.println("删除成功！");
		return "mh/Allcustomers";
	}
	@RequestMapping("/selectDim")
	public @ResponseBody PageInfo<Map> selectDim(Integer pageNum,String key){
		PageHelper.startPage(pageNum, 15);
		System.out.println(key);
		System.out.println(111);
		List<Map> client=service.selectDim(key);
		PageInfo<Map> info=new PageInfo<Map>(client);
		System.out.println(info.getList());
		return info;
	}
}


