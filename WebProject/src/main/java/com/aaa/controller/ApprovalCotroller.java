package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Approval;
import com.aaa.service.ApprovalService;
@RestController
@RequestMapping("Approval")
public class ApprovalCotroller {
	@Autowired
	ApprovalService service;
	@RequestMapping("/queryByCriteria")
    public List<Approval> queryByCriteria(Approval record){
    	
    	return service.select(record);
    }
}
