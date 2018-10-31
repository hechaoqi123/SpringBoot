package com.aaa.bean;

import javax.persistence.Id;

public class Usersandmytransaction {
	@Id
	private Integer userTrid;
	private Integer uid;
	private Integer trid;
	private Integer pid;
	public Integer getUserTrid() {
		return userTrid;
	}
	public void setUserTrid(Integer userTrid) {
		this.userTrid = userTrid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getTrid() {
		return trid;
	}
	public void setTrid(Integer trid) {
		this.trid = trid;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	@Override
	public String toString() {
		return "Usersandmytransaction [userTrid=" + userTrid + ", uid=" + uid + ", trid=" + trid + ", pid=" + pid + "]";
	}
	
}
