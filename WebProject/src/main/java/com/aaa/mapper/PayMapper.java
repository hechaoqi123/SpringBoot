package com.aaa.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;

import com.aaa.bean.Pay;

import tk.mybatis.mapper.common.Mapper;

public interface PayMapper extends Mapper<Pay>{
 @Update(" update pay set field1=#{status} where field2=#{id} ")
 public void updateStatus(@Param("id")Integer id,@Param("status")String status);
}
