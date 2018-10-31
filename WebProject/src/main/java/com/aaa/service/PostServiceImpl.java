package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Post;
import com.aaa.mapper.PostMapper;
@Service
public class PostServiceImpl extends BaseServiceImpl<Post> implements PostService{
	@Autowired
	PostMapper mapper;
	
	@Override
	public List<Post> getAllPost(Integer deptId) {
		return mapper.getAllPost(deptId);
	}
	@Override
	public List<Map> postTrueVisittwomodile(Map map) {
		return mapper.postTrueVisittwomodile(map);
	}
	@Override
	public List<Map> postFalseVisittwomodile(Map map) {
		return mapper.postFalseVisittwomodile(map);
	}
	@Override
	public int delpostVisittwomodile(Map map) {
		return mapper.delpostVisittwomodile(map);
	}
	@Override
	public int insertpostVisittwomodile(Map map) {
		return mapper.insertpostVisittwomodile(map);
	}

}
