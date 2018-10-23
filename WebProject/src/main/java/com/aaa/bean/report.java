package com.aaa.bean;

import java.io.Serializable;

public class report implements Serializable{
    private Integer rid;
    private String rname;
    private String rlname;
    private String rtype;
    private Integer detailld;
    private Integer deptid;
    private String creationdate;
    private Integer reid;
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRlname() {
		return rlname;
	}
	public void setRlname(String rlname) {
		this.rlname = rlname;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public Integer getDetailld() {
		return detailld;
	}
	public void setDetailld(Integer detailld) {
		this.detailld = detailld;
	}
	public Integer getDeptid() {
		return deptid;
	}
	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}
	public String getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}
	public Integer getReid() {
		return reid;
	}
	public void setReid(Integer reid) {
		this.reid = reid;
	}
	@Override
	public String toString() {
		return "report [rid=" + rid + ", rname=" + rname + ", rlname=" + rlname + ", rtype=" + rtype + ", detailld="
				+ detailld + ", deptid=" + deptid + ", creationdate=" + creationdate + ", reid=" + reid + "]";
	}
    
    
}
