package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Visittwomodile implements Serializable {
	@Id
    private Integer mtowid;

    private String mname;

    private String murl;

    private String mdescribe;

    private Integer msequnce;

    private Integer moneid;

    private static final long serialVersionUID = 1L;

    public Integer getMtowid() {
        return mtowid;
    }

    public void setMtowid(Integer mtowid) {
        this.mtowid = mtowid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getMurl() {
        return murl;
    }

    public void setMurl(String murl) {
        this.murl = murl == null ? null : murl.trim();
    }

    public String getMdescribe() {
        return mdescribe;
    }

    public void setMdescribe(String mdescribe) {
        this.mdescribe = mdescribe == null ? null : mdescribe.trim();
    }

    public Integer getMsequnce() {
        return msequnce;
    }

    public void setMsequnce(Integer msequnce) {
        this.msequnce = msequnce;
    }

    public Integer getMoneid() {
        return moneid;
    }

    public void setMoneid(Integer moneid) {
        this.moneid = moneid;
    }

	@Override
	public String toString() {
		return "Visittwomodile [mtowid=" + mtowid + ", mname=" + mname + ", murl=" + murl + ", mdescribe=" + mdescribe
				+ ", msequnce=" + msequnce + ", moneid=" + moneid + "]";
	}
    
    
}