package com.aaa.bean;

import java.io.Serializable;

public class Groupcompany implements Serializable {
    private Integer gcid;

    private String gcname;

    private String gcdepict;

    private String gcjobdescription;

    private Integer gcstate;

    private Integer belong;

    private static final long serialVersionUID = 1L;

    public Integer getGcid() {
        return gcid;
    }

    public void setGcid(Integer gcid) {
        this.gcid = gcid;
    }

    public String getGcname() {
        return gcname;
    }

    public void setGcname(String gcname) {
        this.gcname = gcname == null ? null : gcname.trim();
    }

    public String getGcdepict() {
        return gcdepict;
    }

    public void setGcdepict(String gcdepict) {
        this.gcdepict = gcdepict == null ? null : gcdepict.trim();
    }

    public String getGcjobdescription() {
        return gcjobdescription;
    }

    public void setGcjobdescription(String gcjobdescription) {
        this.gcjobdescription = gcjobdescription == null ? null : gcjobdescription.trim();
    }

    public Integer getGcstate() {
        return gcstate;
    }

    public void setGcstate(Integer gcstate) {
        this.gcstate = gcstate;
    }

    public Integer getBelong() {
        return belong;
    }

    public void setBelong(Integer belong) {
        this.belong = belong;
    }
}