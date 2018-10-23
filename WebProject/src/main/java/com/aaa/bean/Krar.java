package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Krar implements Serializable{
	@Id
	private Integer kid;
	private String kname;//评审人ID
	private String letname;//执行人id
	private Integer pid;//计划ID
	private Integer tid;//任务id
	private Integer rid;//报告id
public Integer getKid() {
	return kid;
}
public void setKid(Integer kid) {
	this.kid = kid;
}
public String getKname() {
	return kname;
}
public void setKname(String kname) {
	this.kname = kname;
}
public String getLetname() {
	return letname;
}
public void setLetname(String letname) {
	this.letname = letname;
}
public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}
public Integer getTid() {
	return tid;
}
public void setTid(Integer tid) {
	this.tid = tid;
}
public Integer getRid() {
	return rid;
}
public void setRid(Integer rid) {
	this.rid = rid;
}
@Override
public String toString() {
	return "Krar [kid=" + kid + ", kname=" + kname + ", letname=" + letname + ", pid=" + pid + ", tid=" + tid + ", rid="
			+ rid + "]";
}




}
