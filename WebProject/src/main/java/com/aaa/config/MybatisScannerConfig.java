package com.aaa.config;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
// 保证在MybatisConfig类实例化后才实例化此方法
@Configuration
@AutoConfigureAfter(MybatisConfig.class) 
public class MybatisScannerConfig {	
	// mapper接口的扫描器	
	@Bean	
	public MapperScannerConfigurer mapperScannerConfigurer() {		
		MapperScannerConfigurer mapperScannerConfigurer = new MapperScannerConfigurer();
		mapperScannerConfigurer.setBasePackage("com.aaa.mapper");		
		mapperScannerConfigurer.setMarkerInterface(Mapper.class);
		return mapperScannerConfigurer;	
   }
}
