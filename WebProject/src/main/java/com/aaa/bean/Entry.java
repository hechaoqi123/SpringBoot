package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Entry implements Serializable {
	@Id
    private Integer enntryid;

    private String dutypeople;//责任人

    private String entryname;//入职人

    private String entrydate;//入职日期

    private String entrydepartment;//入职部门

    private String entrypost;//入职岗位

    private String brthdate;//出生日期

    private String sex;//性别

    private String school;//毕业院校

    private String major;//专业

    private String education;//学历

    private String yearwork;//工作年限

    private String message;//备注

    private String status;//状态

    private String theme;//主题

    private static final long serialVersionUID = 1L;

    public Integer getEnntryid() {
        return enntryid;
    }

    public void setEnntryid(Integer enntryid) {
        this.enntryid = enntryid;
    }

    public String getDutypeople() {
        return dutypeople;
    }

    public void setDutypeople(String dutypeople) {
        this.dutypeople = dutypeople == null ? null : dutypeople.trim();
    }

    public String getEntryname() {
        return entryname;
    }

    public void setEntryname(String entryname) {
        this.entryname = entryname == null ? null : entryname.trim();
    }

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate == null ? null : entrydate.trim();
    }

    public String getEntrydepartment() {
        return entrydepartment;
    }

    public void setEntrydepartment(String entrydepartment) {
        this.entrydepartment = entrydepartment == null ? null : entrydepartment.trim();
    }

    public String getEntrypost() {
        return entrypost;
    }

    public void setEntrypost(String entrypost) {
        this.entrypost = entrypost == null ? null : entrypost.trim();
    }

    public String getBrthdate() {
        return brthdate;
    }

    public void setBrthdate(String brthdate) {
        this.brthdate = brthdate == null ? null : brthdate.trim();
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

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getYearwork() {
        return yearwork;
    }

    public void setYearwork(String yearwork) {
        this.yearwork = yearwork == null ? null : yearwork.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
    }
}