package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Entryapply implements Serializable {
	@Id
    private Integer applyid;

    private String theme;//主题

    private String status;//状态

    private String dutypeople;//责任人

    private String applypeople;//申请人

    private String enddate;//结束时间

    private String entrydate;//入职时间

    private String entrypart;//入职部门

    private String entrypost;//入职岗位

    private String birthdate;//出生日期

    private String sex;//性别

    private String school;//学校

    private String background;//学历

    private String major;//专业

    private String workage;//工作年限

    private String remark;//备注

    private String field1;

    private String field2;

    private String field3;

    private static final long serialVersionUID = 1L;

    public Integer getApplyid() {
        return applyid;
    }

    public void setApplyid(Integer applyid) {
        this.applyid = applyid;
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

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate == null ? null : entrydate.trim();
    }

    public String getEntrypart() {
        return entrypart;
    }

    public void setEntrypart(String entrypart) {
        this.entrypart = entrypart == null ? null : entrypart.trim();
    }

    public String getEntrypost() {
        return entrypost;
    }

    public void setEntrypost(String entrypost) {
        this.entrypost = entrypost == null ? null : entrypost.trim();
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate == null ? null : birthdate.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background == null ? null : background.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getWorkage() {
        return workage;
    }

    public void setWorkage(String workage) {
        this.workage = workage == null ? null : workage.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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