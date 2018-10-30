package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Zs;
import com.aaa.mapper.ZsMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ZsServiceImpl implements ZsService{
    @Autowired
    ZsMapper mapper;
	
	@Override
	public void getAddzs(Zs zs) {
         mapper.getAddzs(zs);		
	}

	@Override
	public PageInfo getAllZs(Integer pageNum) {
		PageHelper.startPage(pageNum,13);
		List<Map> list=mapper.getAllZs();
		PageInfo<Map> info=new PageInfo<Map>(list);
		System.out.println(info);
		return info;
	}

	@Override
	public PageInfo getAllhf(Integer pageNum, String name) {
		PageHelper.startPage(pageNum,13);
		List<Map> list=mapper.getAllhf(name);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

}
