package com.aaa.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Wd implements Serializable {
	@Id
    private Integer wdid;

    private String wdresponsible;

    private String wbpriority;

    private String wdname;

    private String wdversions;

    private String wdauthor;

    private String wdclassify;

    private String wdkeyword;

    private Integer wddept;

    private String wdaccessory;

    private String wdintro;

    @Temporal(TemporalType.TIMESTAMP)  
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date wddate;

    private static final long serialVersionUID = 1L;

    public Integer getWdid() {
        return wdid;
    }

    public void setWdid(Integer wdid) {
        this.wdid = wdid;
    }

    public String getWdresponsible() {
        return wdresponsible;
    }

    public void setWdresponsible(String wdresponsible) {
        this.wdresponsible = wdresponsible == null ? null : wdresponsible.trim();
    }

    public String getWbpriority() {
        return wbpriority;
    }

    public void setWbpriority(String wbpriority) {
        this.wbpriority = wbpriority == null ? null : wbpriority.trim();
    }

    public String getWdname() {
        return wdname;
    }

    public void setWdname(String wdname) {
        this.wdname = wdname == null ? null : wdname.trim();
    }

    public String getWdversions() {
        return wdversions;
    }

    public void setWdversions(String wdversions) {
        this.wdversions = wdversions == null ? null : wdversions.trim();
    }

    public String getWdauthor() {
        return wdauthor;
    }

    public void setWdauthor(String wdauthor) {
        this.wdauthor = wdauthor == null ? null : wdauthor.trim();
    }

    public String getWdclassify() {
        return wdclassify;
    }

    public void setWdclassify(String wdclassify) {
        this.wdclassify = wdclassify == null ? null : wdclassify.trim();
    }

    public String getWdkeyword() {
        return wdkeyword;
    }

    public void setWdkeyword(String wdkeyword) {
        this.wdkeyword = wdkeyword == null ? null : wdkeyword.trim();
    }

    public Integer getWddept() {
        return wddept;
    }

    public void setWddept(Integer wddept) {
        this.wddept = wddept;
    }

    public String getWdaccessory() {
        return wdaccessory;
    }

    public void setWdaccessory(String wdaccessory) {
        this.wdaccessory = wdaccessory == null ? null : wdaccessory.trim();
    }

    public String getWdintro() {
        return wdintro;
    }

    public void setWdintro(String wdintro) {
        this.wdintro = wdintro == null ? null : wdintro.trim();
    }

    public Date getWddate() {
        return wddate;
        
    }

    public void setWddate(Date wddate) {
        this.wddate = wddate;
    }

	@Override
	public String toString() {
		return "Wd [wdid=" + wdid + ", wdresponsible=" + wdresponsible + ", wbpriority=" + wbpriority + ", wdname="
				+ wdname + ", wdversions=" + wdversions + ", wdauthor=" + wdauthor + ", wdclassify=" + wdclassify
				+ ", wdkeyword=" + wdkeyword + ", wddept=" + wddept + ", wdaccessory=" + wdaccessory + ", wdintro="
				+ wdintro + ", wddate=" + wddate + "]";
	}
    
}