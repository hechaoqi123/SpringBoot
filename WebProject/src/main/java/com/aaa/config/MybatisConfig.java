package com.aaa.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.ibatis.plugin.Interceptor;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.pagehelper.PageHelper;

@Configuration
public class MybatisConfig { //对应sqlSessionFactory	
	@Bean
	@ConditionalOnMissingBean // 当容器里没有指定的Bean的情况下创建该对象	
	public SqlSessionFactoryBean sqlSessionFactoryBean(PageHelper pageHelper,DataSource dataSource) {		
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
	   // 设置数据源		
		sqlSessionFactoryBean.setDataSource(dataSource);
	   // 设置别名包	
		sqlSessionFactoryBean.setTypeAliasesPackage("com.aaa.bean");
		//设置分页插件
		Interceptor[] piugins={pageHelper};
		sqlSessionFactoryBean.setPlugins(piugins);
		return sqlSessionFactoryBean;	
		}
	
	//分页插件
	@Bean
    public PageHelper pageHelper() {
        PageHelper pageHelper = new PageHelper();
        Properties p = new Properties();
        p.setProperty("offsetAsPageNum", "true");
        p.setProperty("rowBoundsWithCount", "true");
        p.setProperty("reasonable", "true");
        p.setProperty("dialect", "mysql");
        pageHelper.setProperties(p);
        return pageHelper;
    }
	
	}


