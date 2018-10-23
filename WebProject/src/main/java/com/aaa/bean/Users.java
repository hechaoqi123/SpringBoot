package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Users implements Serializable {
	@Id
    private Integer uid;

    private String uname;

    private String unum;

    private String upass;

    private static final long serialVersionUID = 1L;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUnum() {
        return unum;
    }

    public void setUnum(String unum) {
        this.unum = unum == null ? null : unum.trim();
    }

    public String getUpass() {
        return upass;
    }
    
    

    @Override
	public String toString() {
		return "Users [uid=" + uid + ", uname=" + uname + ", unum=" + unum + ", upass=" + upass + "]";
	}

	public Users(String unum, String upass) {
		super();
		this.unum = unum;
		this.upass = upass;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setUpass(String upass) {
        this.upass = upass == null ? null : upass.trim();
    }
}