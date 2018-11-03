package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Dept;
import com.aaa.bean.Post;
import com.aaa.mapper.DeptMapper;
import com.aaa.mapper.PostMapper;
@Service
public class PostServiceImpl extends BaseServiceImpl<Post> implements PostService{
	@Autowired
	PostMapper mapper;
	@Autowired
	DeptMapper deptMapper;
	
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
	@Override
	public List<Post> getPost(String dept) {
		Dept de=new Dept();
		de.setDeptname(dept);
		de=deptMapper.selectOne(de);
		Post post=new Post();
		post.setDeptid(de.getDeptid());
		List<Post> list=mapper.select(post);
		   Post p=null;
		for (Post post2 : list) {//不能添加超级管理员角色
			if(post2.getPid()==0){
				p=post2;
			}
		}
		if(p!=null){list.remove(p);};
		return list;
	}

}
