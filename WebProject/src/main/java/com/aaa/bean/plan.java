package com.aaa.bean;

import java.io.Serializable;

public class plan implements Serializable {
    private Integer pid;

    private String pname;

    private Integer deptid;

    private String ksdate;

    private String jsdate;

    private Integer detailld;

    private String planname;

    private String type;

    private static final long serialVersionUID = 1L;

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
        this.pname = pname == null ? null : pname.trim();
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
        this.ksdate = ksdate == null ? null : ksdate.trim();
    }

    public String getJsdate() {
        return jsdate;
    }

    public void setJsdate(String jsdate) {
        this.jsdate = jsdate == null ? null : jsdate.trim();
    }

    public Integer getDetailld() {
        return detailld;
    }

    public void setDetailld(Integer detailld) {
        this.detailld = detailld;
    }

    public String getPlanname() {
        return planname;
    }

    public void setPlanname(String planname) {
        this.planname = planname == null ? null : planname.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

	@Override
	public String toString() {
		return "plan [pid=" + pid + ", pname=" + pname + ", deptid=" + deptid + ", ksdate=" + ksdate + ", jsdate="
				+ jsdate + ", detailld=" + detailld + ", planname=" + planname + ", type=" + type + "]";
	}
    
}