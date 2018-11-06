package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Task implements Serializable{
	@Id
  private Integer tid;
  private String tname;
  private String ksdeta;
  private String jsdeta;
  private String workload;
  private Integer deptid;
  private Integer detailld;
  private String rwsm;
  private String zxjg;
  private String rwfl;
  private Integer pid;
  private Integer itemid;

  private static final long serialVersionUID = 1L;
public Integer getTid() {
	return tid;
}
public void setTid(Integer tid) {
	this.tid = tid;
}
public String getTname() {
	return tname;
}
public void setTname(String tname) {
	this.tname = tname;
}
public String getKsdeta() {
	return ksdeta;
}
public void setKsdeta(String ksdeta) {
	this.ksdeta = ksdeta;
}
public String getJsdeta() {
	return jsdeta;
}
public void setJsdeta(String jsdeta) {
	this.jsdeta = jsdeta;
}
public String getWorkload() {
	return workload;
}
public void setWorkload(String workload) {
	this.workload = workload;
}
public Integer getDeptid() {
	return deptid;
}
public void setDeptid(Integer deptid) {
	this.deptid = deptid;
}
public Integer getDetailld() {
	return detailld;
}
public void setDetailld(Integer detailld) {
	this.detailld = detailld;
}
public String getRwsm() {
	return rwsm;
}

public Integer getItemid() {
	return itemid;
}
public void setItemid(Integer itemid) {
	this.itemid = itemid;
}
public void setRwsm(String rwsm) {
	this.rwsm = rwsm;
}
public String getZxjg() {
	return zxjg;
}
public void setZxjg(String zxjg) {
	this.zxjg = zxjg;
}
public String getRwfl() {
	return rwfl;
}
public void setRwfl(String rwfl) {
	this.rwfl = rwfl;
}
public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}
@Override
public String toString() {
	return "Task [tid=" + tid + ", tname=" + tname + ", ksdeta=" + ksdeta + ", jsdeta=" + jsdeta + ", workload="
			+ workload + ", deptid=" + deptid + ", detailld=" + detailld + ", rwsm=" + rwsm + ", zxjg=" + zxjg
			+ ", rwfl=" + rwfl + ", pid=" + pid + "]";
}
   
}