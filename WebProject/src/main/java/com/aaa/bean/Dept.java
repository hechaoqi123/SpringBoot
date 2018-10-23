package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Dept implements Serializable{
	@Id
	 private Integer deptid;
	 private String deptname;
	 private String deptdepict;
	 private String deptjobdescription;
	 private String deptstate;
	 private String belong;
public Integer getDeptid() {
	return deptid;
}
public void setDeptid(Integer deptid) {
	this.deptid = deptid;
}
public String getDeptname() {
	return deptname;
}
public void setDeptname(String deptname) {
	this.deptname = deptname;
}
public String getDeptdepict() {
	return deptdepict;
}
public void setDeptdepict(String deptdepict) {
	this.deptdepict = deptdepict;
}
public String getDeptjobdescription() {
	return deptjobdescription;
}
public void setDeptjobdescription(String deptjobdescription) {
	this.deptjobdescription = deptjobdescription;
}
public String getDeptstate() {
	return deptstate;
}
public void setDeptstate(String deptstate) {
	this.deptstate = deptstate;
}
public String getBelong() {
	return belong;
}
public void setBelong(String belong) {
	this.belong = belong;
}
 
}
