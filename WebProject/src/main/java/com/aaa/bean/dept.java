package com.aaa.bean;

import java.io.Serializable;

public class dept implements Serializable{
 private Integer deptid;
 private String deptName;
 private String deptDepict;
 private String deptJobDescription;
 private String deptState;
 private String belong;
public Integer getDeptid() {
	return deptid;
}
public void setDeptid(Integer deptid) {
	this.deptid = deptid;
}
public String getDeptName() {
	return deptName;
}
public void setDeptName(String deptName) {
	this.deptName = deptName;
}
public String getDeptDepict() {
	return deptDepict;
}
public void setDeptDepict(String deptDepict) {
	this.deptDepict = deptDepict;
}
public String getDeptJobDescription() {
	return deptJobDescription;
}
public void setDeptJobDescription(String deptJobDescription) {
	this.deptJobDescription = deptJobDescription;
}
public String getDeptState() {
	return deptState;
}
public void setDeptState(String deptState) {
	this.deptState = deptState;
}
public String getBelong() {
	return belong;
}
public void setBelong(String belong) {
	this.belong = belong;
}
 
}
