package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Dept implements Serializable {
	@Id
    private Integer deptid;

    private String deptname;//部门名称

    private String deptdepict;//部门描述

    private String deptjobdescription;//工作描述

    private Integer deptstate;//部门主管ID

    private Integer belong;

    private static final long serialVersionUID = 1L;

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
        this.deptname = deptname == null ? null : deptname.trim();
    }

    public String getDeptdepict() {
        return deptdepict;
    }

    public void setDeptdepict(String deptdepict) {
        this.deptdepict = deptdepict == null ? null : deptdepict.trim();
    }

    public String getDeptjobdescription() {
        return deptjobdescription;
    }

    public void setDeptjobdescription(String deptjobdescription) {
        this.deptjobdescription = deptjobdescription == null ? null : deptjobdescription.trim();
    }

    public Integer getDeptstate() {
        return deptstate;
    }

    public void setDeptstate(Integer deptstate) {
        this.deptstate = deptstate;
    }

    public Integer getBelong() {
        return belong;
    }

    public void setBelong(Integer belong) {
        this.belong = belong;
    }
}