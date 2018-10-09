package com.aaa;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource(value = { "classpath:db.properties" })
@SpringBootApplication
public class BootApplication {
	@Value("${jdbc.driver}")
	private String driverClassName;
	@Value("${jdbc.url}")
	private String url;
	@Value("${jdbc.username}")
	private String username;
	@Value("${jdbc.password}")
	private String password; 
	// 配置数据源 
	@Bean(destroyMethod = "close") 
	public DataSource dataSource() { 
	 BasicDataSource basicDataSource = new BasicDataSource();
	 basicDataSource.setDriverClassName(driverClassName);
	 basicDataSource.setUrl(url);
	 basicDataSource.setUsername(username);
	 basicDataSource.setPassword(password); 
	 return basicDataSource;
	 }
	
	protected  SpringApplicationBuilder springApplicationBuilder(SpringApplicationBuilder builder) {
		return  builder.sources(BootApplication.class); 
	}

}
