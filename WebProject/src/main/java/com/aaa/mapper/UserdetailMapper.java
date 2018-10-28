package com.aaa.mapper;


import org.apache.ibatis.annotations.CacheNamespace;
import org.apache.ibatis.annotations.CacheNamespaceRef;
import org.apache.ibatis.annotations.Select;
import org.springframework.cache.annotation.CacheConfig;
import java.util.List;
import java.util.Map;

import com.aaa.bean.Userdetail;
import com.aaa.redis.MybatisRedisCache;
import com.aaa.redis.RedisCacheTransfer;
import com.github.pagehelper.PageInfo;

import tk.mybatis.mapper.common.Mapper;
//使用redis作为二级缓存
@CacheNamespace(implementation=MybatisRedisCache.class)
public interface UserdetailMapper extends  Mapper<Userdetail>{
	@Select("select max(detailid) from Userdetail")
	public Integer getMaxID();
	public List<Map> getAllUserdetail();
    //条件+模糊查询
	public List<Map> getAllOne0(String dependence);
	public List<Map> getAllOne1(String dependence);
	public List<Map> getAllOne2(String dependence);
	public List<Map> getAllOne3(String dependence);
	public List<Map> getAllOne4(String dependence);
	public List<Map> getAllOne5(String dependence);
	public List<Map> getAllOne6(String dependence);
	public List<Map> getAllOne7(String dependence);
	public List<Map> getAllOne8(String dependence);
	public List<Map> getAllOne9(String dependence);
	public List<Map> getAllOne10(String dependence);
	public List<Map> getAllOne11(String dependence);
	public List<Map> getAllOne12(String dependence);
	public List<Map> getAllOne13(String dependence);
	public List<Map> getAllOne14(String dependence);
	public List<Map> getAllOne15(String dependence);
	public List<Map> getAllOne16(String dependence);
	public List<Map> getAllOne17(String dependence);
	public List<Map> getAllOne18(String dependence);
	public List<Map> getAllOne19(String dependence);
	public List<Map> getAllOne20(String dependence);
	public List<Map> getAllOne21(String dependence);
	public List<Map> getAllOne22(String dependence);
	public List<Map> getAllOne23(String dependence);

	
}

