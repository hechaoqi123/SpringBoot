package com.aaa.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Hf implements Serializable {
    private Integer hfid;

    private String hfcontext;
   
    @Temporal(TemporalType.TIMESTAMP)  
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date hfdate;

    private static final long serialVersionUID = 1L;

    public Integer getHfid() {
        return hfid;
    }

    public void setHfid(Integer hfid) {
        this.hfid = hfid;
    }

    public String getHfcontext() {
        return hfcontext;
    }

    public void setHfcontext(String hfcontext) {
        this.hfcontext = hfcontext == null ? null : hfcontext.trim();
    }

    public Date getHfdate() {
        return hfdate;
    }

    public void setHfdate(Date hfdate) {
        this.hfdate = hfdate;
    }
}