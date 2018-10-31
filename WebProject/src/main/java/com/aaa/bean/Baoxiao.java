package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Baoxiao implements Serializable {
	@Id
    private Integer baoxiaoid;

    private String theme;//主题

    private String status;//状态

    private String dutypeople;//责任人

    private String username;//报销人

    private String dept;//部门名称

    private String baoxiaodate;//报销日期

    private String total;//总金额

    private String field1;

    private String field2;

    private static final long serialVersionUID = 1L;

    public Integer getBaoxiaoid() {
        return baoxiaoid;
    }

    public void setBaoxiaoid(Integer baoxiaoid) {
        this.baoxiaoid = baoxiaoid;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getBaoxiaodate() {
        return baoxiaodate;
    }

    public void setBaoxiaodate(String baoxiaodate) {
        this.baoxiaodate = baoxiaodate == null ? null : baoxiaodate.trim();
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total == null ? null : total.trim();
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
}