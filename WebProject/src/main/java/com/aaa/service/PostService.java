package com.aaa.service;

import java.util.List;

import com.aaa.bean.Post;

public interface PostService {
    int deleteByPrimaryKey(Integer pid);

    int insert(Post record);

    int insertSelective(Post record);

    Post selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
    
    List<Post> getAllPost(Integer deptId);
}