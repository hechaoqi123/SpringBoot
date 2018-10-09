package com.aaa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.aaa.bean.User;
public interface UserService {
	List<User> getAllUser();
}
