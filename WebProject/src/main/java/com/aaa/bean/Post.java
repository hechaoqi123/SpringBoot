package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Post implements Serializable {
	@Id
    private Integer pid;

    private String pname;

    private String describes;

    private Integer seq;

    private Integer deptid;

    private static final long serialVersionUID = 1L;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes == null ? null : describes.trim();
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

	@Override
	public String toString() {
		return "Post [pid=" + pid + ", pname=" + pname + ", describes=" + describes + ", seq=" + seq + ", deptid="
				+ deptid + "]";
	}
    
}