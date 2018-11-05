package com.aaa.service;

import java.util.Date;
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
		
		 zs.setZsdate(new Date());
         mapper.insert(zs);		
	}

	@Override
	public PageInfo getAllZs(Integer pageNum) {
		PageHelper.startPage(pageNum,13);
		List<Zs> list=mapper.selectAll();
		PageInfo<Zs> info=new PageInfo<Zs>(list);
		System.out.println(info);
		return info;
	}

	@Override
	public PageInfo getAllone0(Integer pageNum) {
		PageHelper.startPage(pageNum,13);
		List<Zs> list=mapper.selectAll();
		PageInfo<Zs> info=new PageInfo<Zs>(list);
		return info;
	}

	@Override
	public PageInfo getAllone1(Integer pageNum, String zsclassify) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,13);
		Zs z=new Zs();
		z.setZsclassify(zsclassify);
		List<Zs> list=mapper.select(z);
		PageInfo<Zs> info=new PageInfo<Zs>(list);
		
		return info;
	}

	@Override
	public PageInfo getAllone2(Integer pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,13);
		List<Map> list=mapper.getAllone2();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo getAllone3(Integer pageNum) {
		// TODO Auto-generated method stub
				PageHelper.startPage(pageNum,13);
				List<Map> list=mapper.getAllone3();
				PageInfo<Map> info=new PageInfo<Map>(list);
				return info;
	}

	@Override
	public PageInfo getAllone4(Integer pageNum) {
		// TODO Auto-generated method stub
				PageHelper.startPage(pageNum,13);
				List<Map> list=mapper.getAllone4();
				PageInfo<Map> info=new PageInfo<Map>(list);
				return info;
	}

	@Override
	public List<Map> getAll(int id) {
		// TODO Auto-generated method stub
		return mapper.getAll(id);
	}

	

}
