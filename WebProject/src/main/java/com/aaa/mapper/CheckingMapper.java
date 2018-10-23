package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.CacheNamespace;

import com.aaa.bean.Checking;
import com.aaa.redis.MybatisRedisCache;

import tk.mybatis.mapper.common.Mapper;
public interface CheckingMapper extends Mapper<Checking> {
}