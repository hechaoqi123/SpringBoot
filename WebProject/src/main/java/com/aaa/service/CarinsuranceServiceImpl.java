package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Carinsurance;

import com.aaa.mapper.CarinsuranceMapper;

@Service
public class CarinsuranceServiceImpl extends BaseServiceImpl<Carinsurance> implements CarinsuranceService {

	@Autowired 
	CarinsuranceMapper mapper;
	

};
