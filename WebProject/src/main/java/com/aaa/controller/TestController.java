package com.aaa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.service.UserService;

@RestController
public class TestController{
	@Autowired
	private UserService userServiceImpl;
    @RequestMapping("test")
    public String test(){
        return userServiceImpl.getAllUser().toString();
    }
}
