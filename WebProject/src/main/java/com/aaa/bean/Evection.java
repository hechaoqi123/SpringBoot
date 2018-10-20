package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Evection implements Serializable {
	@Id
    private Integer evectionid;

    private String theme;

    private String status;

    private String dutypeople;

    private String applypeople;

    private String dept;

    private String applydate;

    private String evectiondate;

    private String evectionenddate;

    private String destination;

    private String cause;

    private String traffic;

    private String report;

    private String result;

    private String field1;

    private String field2;

    private static final long serialVersionUID = 1L;

    public Integer getEvectionid() {
        return evectionid;
    }

    public void setEvectionid(Integer evectionid) {
        this.evectionid = evectionid;
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

    public String getEvectiondate() {
        return evectiondate;
    }

    public void setEvectiondate(String evectiondate) {
        this.evectiondate = evectiondate == null ? null : evectiondate.trim();
    }

    public String getEvectionenddate() {
        return evectionenddate;
    }

    public void setEvectionenddate(String evectionenddate) {
        this.evectionenddate = evectionenddate == null ? null : evectionenddate.trim();
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination == null ? null : destination.trim();
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause == null ? null : cause.trim();
    }

    public String getTraffic() {
        return traffic;
    }

    public void setTraffic(String traffic) {
        this.traffic = traffic == null ? null : traffic.trim();
    }

    public String getReport() {
        return report;
    }

    public void setReport(String report) {
        this.report = report == null ? null : report.trim();
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
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