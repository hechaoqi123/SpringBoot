package com.aaa.bean;

import java.io.Serializable;

public class Userspost implements Serializable {
    private Integer pid;

    private Integer uid;

    private static final long serialVersionUID = 1L;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

	@Override
	public String toString() {
		return "Userspost [pid=" + pid + ", uid=" + uid + "]";
	}
    
}