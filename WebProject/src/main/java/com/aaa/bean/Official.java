package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Official implements Serializable {
	@Id
    private Integer officialid;

    private String theme;//主题

    private String dutypeople;//责任人

    private String proposer;//申请人

    private String filingdate;//申请时间

    private String department;//部门

    private String post;//岗位

    private String entrydate;//入职日期

    private String officialdate;//转正日期

    private String workcontent;//试用期主要工作

    private String workgrade;//试用期成绩

    private String issue;//问题

    private String superiorremark;//主管评语
    
    private String status;

    private static final long serialVersionUID = 1L;

    public Integer getOfficialid() {
        return officialid;
    }

    public void setOfficialid(Integer officialid) {
        this.officialid = officialid;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
    }

    public String getDutypeople() {
        return dutypeople;
    }

    public void setDutypeople(String dutypeople) {
        this.dutypeople = dutypeople == null ? null : dutypeople.trim();
    }

    public String getProposer() {
        return proposer;
    }

    public void setProposer(String proposer) {
        this.proposer = proposer == null ? null : proposer.trim();
    }

    public String getFilingdate() {
        return filingdate;
    }

    public void setFilingdate(String filingdate) {
        this.filingdate = filingdate == null ? null : filingdate.trim();
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

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate == null ? null : entrydate.trim();
    }

    public String getOfficialdate() {
        return officialdate;
    }

    public void setOfficialdate(String officialdate) {
        this.officialdate = officialdate == null ? null : officialdate.trim();
    }

    public String getWorkcontent() {
        return workcontent;
    }

    public void setWorkcontent(String workcontent) {
        this.workcontent = workcontent == null ? null : workcontent.trim();
    }

    public String getWorkgrade() {
        return workgrade;
    }

    public void setWorkgrade(String workgrade) {
        this.workgrade = workgrade == null ? null : workgrade.trim();
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue == null ? null : issue.trim();
    }

    public String getSuperiorremark() {
        return superiorremark;
    }

    public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setSuperiorremark(String superiorremark) {
        this.superiorremark = superiorremark == null ? null : superiorremark.trim();
    }
}