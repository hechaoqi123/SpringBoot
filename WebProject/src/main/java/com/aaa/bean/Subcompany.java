package com.aaa.bean;

import java.io.Serializable;

public class Subcompany implements Serializable {
    private Integer scid;

    private String scname;

    private String scdepict;

    private String scjobdescription;

    private Integer scstate;

    private Integer belong;

    private static final long serialVersionUID = 1L;

    public Integer getScid() {
        return scid;
    }

    public void setScid(Integer scid) {
        this.scid = scid;
    }

    public String getScname() {
        return scname;
    }

    public void setScname(String scname) {
        this.scname = scname == null ? null : scname.trim();
    }

    public String getScdepict() {
        return scdepict;
    }

    public void setScdepict(String scdepict) {
        this.scdepict = scdepict == null ? null : scdepict.trim();
    }

    public String getScjobdescription() {
        return scjobdescription;
    }

    public void setScjobdescription(String scjobdescription) {
        this.scjobdescription = scjobdescription == null ? null : scjobdescription.trim();
    }

    public Integer getScstate() {
        return scstate;
    }

    public void setScstate(Integer scstate) {
        this.scstate = scstate;
    }

    public Integer getBelong() {
        return belong;
    }

    public void setBelong(Integer belong) {
        this.belong = belong;
    }

	@Override
	public String toString() {
		return "Subcompany [scid=" + scid + ", scname=" + scname + ", scdepict=" + scdepict + ", scjobdescription="
				+ scjobdescription + ", scstate=" + scstate + ", belong=" + belong + "]";
	}
    
    
}