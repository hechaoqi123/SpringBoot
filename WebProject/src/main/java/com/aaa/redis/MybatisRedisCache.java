package com.aaa.redis;


import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
 
import org.apache.ibatis.cache.Cache;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;

import redis.clients.jedis.exceptions.JedisConnectionException;
 
public class MybatisRedisCache implements Cache {
	private static JedisConnectionFactory jedisConnectionFactory;
 
    private final String id;
 
    private final ReadWriteLock readWriteLock = new ReentrantReadWriteLock();
 
    //创建缓存实例
    public MybatisRedisCache(final String id) {
    	System.out.println("创建了一个MybatisRedisCache实例:"+this);
        if (id == null) {
            throw new IllegalArgumentException("Cache instances require an ID");
        }
        this.id = id;
    }
 
    @Override
    public void clear() {
    	System.out.println("====================clear=====================");
        RedisConnection connection = null;
        try {
            connection = jedisConnectionFactory.getConnection();
            connection.flushDb();
            connection.flushAll();
        } catch (JedisConnectionException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
    }
 
    @Override
    public String getId() {
    	System.out.println("====================getId=====================");
        return this.id;
    }
 
    @Override
    public Object getObject(Object key) {
    	System.out.println("====================getObject====================="+key);
        Object result = null;
        RedisConnection connection = null;
        try {
            connection = jedisConnectionFactory.getConnection();
            RedisSerializer<Object> serializer = new JdkSerializationRedisSerializer();
            result = serializer.deserialize(connection.get(serializer.serialize(key)));
        } catch (JedisConnectionException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
        return result;
    }
 
    @Override
    public ReadWriteLock getReadWriteLock() {
        return this.readWriteLock;
    }
 
    @Override
    public int getSize() {
    	System.out.println("====================getSize=====================");
        int result = 0;
        RedisConnection connection = null;
        try {
            connection = jedisConnectionFactory.getConnection();
            result = Integer.valueOf(connection.dbSize().toString());
        } catch (JedisConnectionException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
        return result;
    }
 
    @Override
    public void putObject(Object key, Object value) {
    	System.out.println("====================putObject=====================");
    	System.out.println(key+""+value);
        RedisConnection connection = null;
        try {
            connection = jedisConnectionFactory.getConnection();
            RedisSerializer<Object> serializer = new JdkSerializationRedisSerializer();
            connection.set(serializer.serialize(key), serializer.serialize(value));
        } catch (JedisConnectionException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
    }
 
    @Override
    public Object removeObject(Object key) {
    	System.out.println("====================removeObject=====================");
        RedisConnection connection = null;
        Object result = null;
        try {
            connection = jedisConnectionFactory.getConnection();
            RedisSerializer<Object> serializer = new JdkSerializationRedisSerializer();
            result = connection.expire(serializer.serialize(key), 0);
        } catch (JedisConnectionException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
        return result;
    }
 
    public static void setJedisConnectionFactory(JedisConnectionFactory jedisConnectionFactory) {
       
    	MybatisRedisCache.jedisConnectionFactory = jedisConnectionFactory;
    }
}

