package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;
//招聘申请
public class Recruit implements Serializable {
	@Id
    private Integer recruitid;

    private String principal;//责任人

    private String enddate;//到岗日期

    private String department;//部门

    private String post;//职位

    private String peoplenumber;//人数

    private String cause;//招聘原因

    private String obligation;//职务

    private String language;//语言要求

    private String workspace;//工作地点

    private String age;//年龄

    private String sex;//性别

    private String education;//学历

    private String major;//专业

    private String experience;//工作经验

    private String other;//申请日期

    private String status;//申请单状态

    private String theme;//主题

    private static final long serialVersionUID = 1L;

    public Integer getRecruitid() {
        return recruitid;
    }

    public void setRecruitid(Integer recruitid) {
        this.recruitid = recruitid;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal == null ? null : principal.trim();
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post == null ? null : post.trim();
    }

    public String getPeoplenumber() {
        return peoplenumber;
    }

    public void setPeoplenumber(String peoplenumber) {
        this.peoplenumber = peoplenumber == null ? null : peoplenumber.trim();
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause == null ? null : cause.trim();
    }

    public String getObligation() {
        return obligation;
    }

    public void setObligation(String obligation) {
        this.obligation = obligation == null ? null : obligation.trim();
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language == null ? null : language.trim();
    }

    public String getWorkspace() {
        return workspace;
    }

    public void setWorkspace(String workspace) {
        this.workspace = workspace == null ? null : workspace.trim();
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age == null ? null : age.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience == null ? null : experience.trim();
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other == null ? null : other.trim();
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