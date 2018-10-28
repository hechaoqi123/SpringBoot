package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Post;
import com.aaa.mapper.PostMapper;
@Service
public class PostServiceImpl implements PostService{
	@Autowired
	PostMapper mapper;
	
	
	@Transactional
	@Override
	public int deleteByPrimaryKey(Integer pid) {
		return mapper.deleteByPrimaryKey(pid);
	}
	@Transactional
	@Override
	public int insert(Post record) {
		return mapper.insert(record);
	}
	@Transactional
	@Override
	public int insertSelective(Post record) {
		return mapper.insertSelective(record);
	}

	@Override
	public Post selectByPrimaryKey(Integer pid) {
		return mapper.selectByPrimaryKey(pid);
	}
	@Transactional
	@Override
	public int updateByPrimaryKeySelective(Post record) {
		return mapper.updateByPrimaryKeySelective(record);
	}
	@Transactional
	@Override
	public int updateByPrimaryKey(Post record) {
		return mapper.updateByPrimaryKey(record);
	}

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
