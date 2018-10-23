package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Post;

public interface PostMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Post record);

    int insertSelective(Post record);

    Post selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
    
    List<Post> getAllPost(@Param("deptId") Integer deptId);
}