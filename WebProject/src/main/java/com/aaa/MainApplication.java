package com.aaa;


import java.util.Date;

import org.springframework.boot.SpringApplication;

import com.aaa.base.EmailUtil;

public class MainApplication {
    public static void main(String[] args) throws Exception {
	SpringApplication.run(BootApplication.class, args);
    /*	String body="尊敬的XXX先生，<br/>当你看到这封邮件时，你亲爱的组长已经在"+new Date().toLocaleString()+"完成了邮件的发送。";
    	String[] receiveMailAccounts={"1375942531@qq.com","1127181497@qq.com"};
    	EmailUtil.SendEmail(body, "Test", receiveMailAccounts);*/
	}

}		
		