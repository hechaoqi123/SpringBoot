package com.aaa.config;

import javax.sql.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MybatisConfig { //对应sqlSessionFactory	
	@Bean	
	@ConditionalOnMissingBean 
	// 当容器里没有指定的Bean的情况下创建该对象	
	public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource dataSource) {		
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
	   // 设置数据源		
		sqlSessionFactoryBean.setDataSource(dataSource);
	   // 设置别名包	
		sqlSessionFactoryBean.setTypeAliasesPackage("com.aaa.bean");
		return sqlSessionFactoryBean;	
		}
	}


