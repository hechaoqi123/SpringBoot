package com.aaa.bean;

import java.io.Serializable;

public class perform implements Serializable{
 private Integer plid;
 private String plname;//计划事项
 private String plperform;//执行人
 private String performdate;//执行时间
 private String pid;
public Integer getPlid() {
	return plid;
}
public void setPlid(Integer plid) {
	this.plid = plid;
}
public String getPlname() {
	return plname;
}
public void setPlname(String plname) {
	this.plname = plname;
}
public String getPlperform() {
	return plperform;
}
public void setPlperform(String plperform) {
	this.plperform = plperform;
}
public String getPerformdate() {
	return performdate;
}
public void setPerformdate(String performdate) {
	this.performdate = performdate;
}
public String getPid() {
	return pid;
}
public void setPid(String pid) {
	this.pid = pid;
}
@Override
public String toString() {
	return "perform [plid=" + plid + ", plname=" + plname + ", plperform=" + plperform + ", performdate=" + performdate
			+ ", pid=" + pid + "]";
}
 
}
