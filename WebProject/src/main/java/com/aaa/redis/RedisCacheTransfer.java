package com.aaa.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.stereotype.Component;
@Component
public class RedisCacheTransfer {
	 @Autowired
	public void setJedisConnectionFactory(JedisConnectionFactory jedisConnectionFactory) {
		
		 MybatisRedisCache.setJedisConnectionFactory(jedisConnectionFactory);
	}
}
