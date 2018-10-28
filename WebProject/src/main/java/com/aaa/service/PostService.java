package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Post;

public interface PostService {
    int deleteByPrimaryKey(Integer pid);

    int insert(Post record);

    int insertSelective(Post record);

    Post selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
    
    List<Post> getAllPost(Integer deptId);
    
    //查询职位对应的功能
    List<Map> postTrueVisittwomodile(Map map);
    //查询职位没有的功能
    List<Map> postFalseVisittwomodile(Map map);
    //增减访问功能
    @Transactional
    int delpostVisittwomodile(Map map);
    @Transactional
    int insertpostVisittwomodile(Map map);
}