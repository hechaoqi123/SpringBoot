package com.aaa.main;

import java.io.File;  
import java.io.IOException;  
import java.sql.SQLException;  
import java.util.ArrayList;  
import java.util.List;

import javax.annotation.Resources;

import org.mybatis.generator.api.MyBatisGenerator;  
import org.mybatis.generator.config.Configuration;  
import org.mybatis.generator.config.xml.ConfigurationParser;  
import org.mybatis.generator.exception.InvalidConfigurationException;  
import org.mybatis.generator.exception.XMLParserException;  
import org.mybatis.generator.internal.DefaultShellCallback;  
public class GenMain {
	 public static void main(String[] args) throws IOException {  
	        List<String> warnings = new ArrayList<String>();  
	        boolean overwrite = true;  
	        String genCfg ="./mbgConfiguration.xml";  
	        File configFile = org.apache.ibatis.io.Resources.getResourceAsFile("mbgConfiguration.xml");
	        ConfigurationParser cp = new ConfigurationParser(warnings);  
	        Configuration config = null;  
	        try {  
	            config = cp.parseConfiguration(configFile);  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        } catch (XMLParserException e) {  
	            e.printStackTrace();  
	        }  
	        DefaultShellCallback callback = new DefaultShellCallback(overwrite);  
	        MyBatisGenerator myBatisGenerator = null;  
	        try {  
	            myBatisGenerator = new MyBatisGenerator(config, callback, warnings);  
	        } catch (InvalidConfigurationException e) {  
	            e.printStackTrace();  
	        }  
	        try {  
	            myBatisGenerator.generate(null);  
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        } catch (InterruptedException e) {  
	            e.printStackTrace();  
	        }  
	    }  
}
