package com.aaa.bean;

import javax.persistence.Id;

public class Metting {
	private String mname;
	@Id
	private Integer mid;
	private String mcapacity;
	private String mlocation;
	private String mfacility;
	private String mcustodian;
	private String mstate;
	private String mdescribe;
	private String madjunct;
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getMcapacity() {
		return mcapacity;
	}
	public void setMcapacity(String mcapacity) {
		this.mcapacity = mcapacity;
	}
	public String getMlocation() {
		return mlocation;
	}
	public void setMlocation(String mlocation) {
		this.mlocation = mlocation;
	}
	public String getMfacility() {
		return mfacility;
	}
	public void setMfacility(String mfacility) {
		this.mfacility = mfacility;
	}
	public String getMcustodian() {
		return mcustodian;
	}
	public void setMcustodian(String mcustodian) {
		this.mcustodian = mcustodian;
	}
	public String getMstate() {
		return mstate;
	}
	public void setMstate(String mstate) {
		this.mstate = mstate;
	}
	public String getMdescribe() {
		return mdescribe;
	}
	public void setMdescribe(String mdescribe) {
		this.mdescribe = mdescribe;
	}
	public String getMadjunct() {
		return madjunct;
	}
	public void setMadjunct(String madjunct) {
		this.madjunct = madjunct;
	}
	public Metting(String mname, Integer mid, String mcapacity, String mlocation, String mfacility, String mcustodian,
			String mstate, String mdescribe, String madjunct) {
		super();
		this.mname = mname;
		this.mid = mid;
		this.mcapacity = mcapacity;
		this.mlocation = mlocation;
		this.mfacility = mfacility;
		this.mcustodian = mcustodian;
		this.mstate = mstate;
		this.mdescribe = mdescribe;
		this.madjunct = madjunct;
	}
	public Metting() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
} 
