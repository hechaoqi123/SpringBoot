package com.aaa.bean;

import java.io.Serializable;

public class Official implements Serializable {
    private Integer officialid;

    private String theme;

    private String dutypeople;

    private String proposer;

    private String filingdate;

    private String department;

    private String post;

    private String entrydate;

    private String officialdate;

    private String workcontent;

    private String workgrade;

    private String issue;

    private String superiorremark;

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

    public void setSuperiorremark(String superiorremark) {
        this.superiorremark = superiorremark == null ? null : superiorremark.trim();
    }
}