package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Checking implements Serializable {
	@Id
    private Integer checkingid;

    private String theme;//主题

    private String username;//上传人

    private String dept;//部门

    private String type;//文件路径

    private String checkingdate;//上传日期

    private String duration;//文件描述

    private String field1;//状态

    private String field2;

    private String field3;

    private static final long serialVersionUID = 1L;

    public Integer getCheckingid() {
        return checkingid;
    }

    public void setCheckingid(Integer checkingid) {
        this.checkingid = checkingid;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getCheckingdate() {
        return checkingdate;
    }

    public void setCheckingdate(String checkingdate) {
        this.checkingdate = checkingdate == null ? null : checkingdate.trim();
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration == null ? null : duration.trim();
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