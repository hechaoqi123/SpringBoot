package com.aaa.bean;


public class Visitonemodile {
	private Integer mOneId;
	private String mname;
	private String mdescribe;
	private Integer msequnce;
	private String mimageurl;
	public Integer getmOneId() {
		return mOneId;
	}
	public void setmOneId(Integer mOneId) {
		this.mOneId = mOneId;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMdescribe() {
		return mdescribe;
	}
	public void setMdescribe(String mdescribe) {
		this.mdescribe = mdescribe;
	}
	public Integer getMsequnce() {
		return msequnce;
	}
	public void setMsequnce(Integer msequnce) {
		this.msequnce = msequnce;
	}
	public String getMimageurl() {
		return mimageurl;
	}
	public void setMimageurl(String mimageurl) {
		this.mimageurl = mimageurl;
	}
	@Override
	public String toString() {
		return "Visitonemodile [mOneId=" + mOneId + ", mname=" + mname + ", mdescribe=" + mdescribe + ", msequnce="
				+ msequnce + ", mimageurl=" + mimageurl + "]";
	}
	public Visitonemodile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Visitonemodile(Integer mOneId, String mname, String mdescribe, Integer msequnce, String mimageurl) {
		super();
		this.mOneId = mOneId;
		this.mname = mname;
		this.mdescribe = mdescribe;
		this.msequnce = msequnce;
		this.mimageurl = mimageurl;
	}


}
