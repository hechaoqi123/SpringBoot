package com.aaa.bean;

public class plan {
  private Integer pid;
  private String pname;
  private Integer deptid;
  private String ksdate;
  private String jsdate;
  private Integer detailld;
public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public Integer getDeptid() {
	return deptid;
}
public void setDeptid(Integer deptid) {
	this.deptid = deptid;
}
public String getKsdate() {
	return ksdate;
}
public void setKsdate(String ksdate) {
	this.ksdate = ksdate;
}
public String getJsdate() {
	return jsdate;
}
public void setJsdate(String jsdate) {
	this.jsdate = jsdate;
}
public Integer getDetailld() {
	return detailld;
}
public void setDetailld(Integer detailld) {
	this.detailld = detailld;
}
@Override
public String toString() {
	return "plan [pid=" + pid + ", pname=" + pname + ", deptid=" + deptid + ", ksdate=" + ksdate + ", jsdate=" + jsdate
			+ ", detailld=" + detailld + "]";
}
  
}
