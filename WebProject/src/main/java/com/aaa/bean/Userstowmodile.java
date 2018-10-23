package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Userstowmodile implements Serializable {
	@Id
    private Integer mtowid;

    private Integer uid;

    private static final long serialVersionUID = 1L;

    public Integer getMtowid() {
        return mtowid;
    }

    public void setMtowid(Integer mtowid) {
        this.mtowid = mtowid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

	@Override
	public String toString() {
		return "Userstowmodile [mtowid=" + mtowid + ", uid=" + uid + "]";
	}
    
}