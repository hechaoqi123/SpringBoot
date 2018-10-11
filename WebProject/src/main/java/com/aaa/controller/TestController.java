package com.aaa.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
    @RequestMapping("vueTest")
    public String vueTest(String a,Integer b, Map<Object, Object> c){
    	System.out.println(a+"aaa_______________________________________"+b);
    	System.out.println(c);
    	return "hahahahahah";
    }
    @RequestMapping("postTest")
    @ResponseBody
    public String postTest(Integer a,Map<Object, Object> c){
    	System.out.println(a+"aaa_______________________________________");
    	System.out.println(c);
    	return "hahahahahah";
    }
}
