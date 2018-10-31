package com.aaa.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Zs implements Serializable {
    private Integer zsid;

    private String zsclassify;//分类

    private String zslabel;//标记

    private String zstheme;//主题

    private String zsaccessory;//附件
    @Temporal(TemporalType.TIMESTAMP)  
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date zsdate;//时间

    

    private String zsauthor;//作者

    private String zscontext;//内容

    private static final long serialVersionUID = 1L;

    public Integer getZsid() {
        return zsid;
    }

    public void setZsid(Integer zsid) {
        this.zsid = zsid;
    }

    public String getZsclassify() {
        return zsclassify;
    }

    public void setZsclassify(String zsclassify) {
        this.zsclassify = zsclassify == null ? null : zsclassify.trim();
    }

    public String getZslabel() {
        return zslabel;
    }

    public void setZslabel(String zslabel) {
        this.zslabel = zslabel == null ? null : zslabel.trim();
    }

    public String getZstheme() {
        return zstheme;
    }

    public void setZstheme(String zstheme) {
        this.zstheme = zstheme == null ? null : zstheme.trim();
    }

    public String getZsaccessory() {
        return zsaccessory;
    }

    public void setZsaccessory(String zsaccessory) {
        this.zsaccessory = zsaccessory == null ? null : zsaccessory.trim();
    }

    public Date getZsdate() {
        return zsdate;
    }

    public void setZsdate(Date zsdate) {
        this.zsdate = zsdate;
    }

   

    public String getZsauthor() {
        return zsauthor;
    }

    public void setZsauthor(String zsauthor) {
        this.zsauthor = zsauthor == null ? null : zsauthor.trim();
    }

    public String getZscontext() {
        return zscontext;
    }

    public void setZscontext(String zscontext) {
        this.zscontext = zscontext == null ? null : zscontext.trim();
    }
}