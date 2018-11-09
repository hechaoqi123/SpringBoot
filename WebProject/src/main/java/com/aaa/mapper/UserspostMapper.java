package com.aaa.mapper;

import org.apache.ibatis.annotations.Delete;

import com.aaa.bean.Userspost;

import tk.mybatis.mapper.common.Mapper;

public interface UserspostMapper extends Mapper<Userspost>{
	@Delete("DELETE FROM userspost WHERE uid = #{userId}")
	int deluserPost(Integer userId);
    
}