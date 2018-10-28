package com.aaa.mapper;


import org.apache.ibatis.annotations.CacheNamespace;
import org.apache.ibatis.annotations.CacheNamespaceRef;
import org.springframework.cache.annotation.CacheConfig;

import com.aaa.bean.Userdetail;
import com.aaa.redis.MybatisRedisCache;
import com.aaa.redis.RedisCacheTransfer;

import tk.mybatis.mapper.common.Mapper;
//使用redis作为二级缓存

public interface UserdetailMapper extends Mapper<Userdetail>{
}