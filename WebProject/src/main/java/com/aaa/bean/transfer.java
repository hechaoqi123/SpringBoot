package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class transfer implements Serializable {
	@Id
    private Integer transferid;

    private String theme;//主题

    private String status;//状态

    private String dutypeople;//责任人

    private String applypeople;//申请人

    private String entrydate;//入职日期

    private String oldpart;//原部门

    private String newpart;//新部门

    private String oldpost;//原岗位

    private String newpost;//新岗位
    
    private String field1;//备注
    
    private String field2;//备注

    private String cause;//调动原因

    private String genre;//调动类型

    private String oldsuperiorremark;//原上级意见

    private String newsuperiorremark;//新上级意见

    private static final long serialVersionUID = 1L;
    public Integer getTransferid() {
        return transferid;
    }

    public void setTransferid(Integer transferid) {
        this.transferid = transferid;
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

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate == null ? null : entrydate.trim();
    }

    public String getOldpart() {
        return oldpart;
    }

    public void setOldpart(String oldpart) {
        this.oldpart = oldpart == null ? null : oldpart.trim();
    }

    public String getNewpart() {
        return newpart;
    }

    public void setNewpart(String newpart) {
        this.newpart = newpart == null ? null : newpart.trim();
    }

    public String getOldpost() {
        return oldpost;
    }

    public void setOldpost(String oldpost) {
        this.oldpost = oldpost == null ? null : oldpost.trim();
    }

    public String getNewpost() {
        return newpost;
    }

    public void setNewpost(String newpost) {
        this.newpost = newpost == null ? null : newpost.trim();
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause == null ? null : cause.trim();
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre == null ? null : genre.trim();
    }

    public String getOldsuperiorremark() {
        return oldsuperiorremark;
    }

    public void setOldsuperiorremark(String oldsuperiorremark) {
        this.oldsuperiorremark = oldsuperiorremark == null ? null : oldsuperiorremark.trim();
    }

    public String getNewsuperiorremark() {
        return newsuperiorremark;
    }

    public void setNewsuperiorremark(String newsuperiorremark) {
        this.newsuperiorremark = newsuperiorremark == null ? null : newsuperiorremark.trim();
    }

	public String getField1() {
		return field1;
	}

	public void setField1(String field1) {
		this.field1 = field1;
	}

	public String getField2() {
		return field2;
	}

	public void setField2(String field2) {
		this.field2 = field2;
	}
    
}