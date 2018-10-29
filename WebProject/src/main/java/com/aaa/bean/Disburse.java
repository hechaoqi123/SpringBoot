package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Disburse implements Serializable {
	@Id
    private Integer disburseid;

    private String theme;//主题

    private String status;//状态

    private String dutypeople;//责任人

    private String applypeople;//申请人

    private String dept;//部门

    private String applydate;//申请日期

    private String field1;//金额

    private String field2;

    private String field3;

    private static final long serialVersionUID = 1L;

    public Integer getDisburseid() {
        return disburseid;
    }

    public void setDisburseid(Integer disburseid) {
        this.disburseid = disburseid;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getDutypeople() {
        return dutypeople;
    }

    public void setDutypeople(String dutypeople) {
        this.dutypeople = dutypeople == null ? null : dutypeople.trim();
    }

    public String getApplypeople() {
        return applypeople;
    }

    public void setApplypeople(String applypeople) {
        this.applypeople = applypeople == null ? null : applypeople.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getApplydate() {
        return applydate;
    }

    public void setApplydate(String applydate) {
        this.applydate = applydate == null ? null : applydate.trim();
    }

    public String getField1() {
        return field1;
    }

    public void setField1(String field1) {
        this.field1 = field1 == null ? null : field1.trim();
    }

    public String getField2() {
        return field2;
    }

    public void setField2(String field2) {
        this.field2 = field2 == null ? null : field2.trim();
    }

    public String getField3() {
        return field3;
    }

    public void setField3(String field3) {
        this.field3 = field3 == null ? null : field3.trim();
    }
}