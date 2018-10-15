package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Userdetail;
import com.aaa.service.UserdetailService;

@RestController
public class UserdetailController {
	@Autowired
	private UserdetailService UserdetailServiceImpl; 
	@RequestMapping("/getAllUserdetail")
	public List<Userdetail> getAllUserdetail(){
		
		
		return UserdetailServiceImpl.getAllUserdetail();
	}
 
}
