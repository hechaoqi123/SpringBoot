package com.aaa.bean;

public class Wb {
	private int wbid;
	private String wbname;
    private String wbfl;
	private String wbtx;
	private String wbssdw;
	private String wbphone;
	private String wbphonenum;
	private String wbyj;
	private String wbjstx;
	private String wbbz;
	private String wbxb;
	public int getWbid() {
		return wbid;
	}
	public void setWbid(int wbid) {
		this.wbid = wbid;
	}
	public String getWbname() {
		return wbname;
	}
	public void setWbname(String wbname) {
		this.wbname = wbname;
	}
	public String getWbfl() {
		return wbfl;
	}
	public void setWbfl(String wbfl) {
		this.wbfl = wbfl;
	}
	public String getWbtx() {
		return wbtx;
	}
	public void setWbtx(String wbtx) {
		this.wbtx = wbtx;
	}
	public String getWbssdw() {
		return wbssdw;
	}
	public void setWbssdw(String wbssdw) {
		this.wbssdw = wbssdw;
	}
	public String getWbphone() {
		return wbphone;
	}
	public void setWbphone(String wbphone) {
		this.wbphone = wbphone;
	}
	public String getWbphonenum() {
		return wbphonenum;
	}
	public void setWbphonenum(String wbphonenum) {
		this.wbphonenum = wbphonenum;
	}
	public String getWbyj() {
		return wbyj;
	}
	public void setWbyj(String wbyj) {
		this.wbyj = wbyj;
	}
	public String getWbjstx() {
		return wbjstx;
	}
	public void setWbjstx(String wbjstx) {
		this.wbjstx = wbjstx;
	}
	public String getWbbz() {
		return wbbz;
	}
	public void setWbbz(String wbbz) {
		this.wbbz = wbbz;
	}
	public String getWbxb() {
		return wbxb;
	}
	public void setWbxb(String wbxb) {
		this.wbxb = wbxb;
	}
	public Wb(int wbid, String wbname, String wbfl, String wbtx, String wbssdw, String wbphone, String wbphonenum,
			String wbyj, String wbjstx, String wbbz, String wbxb) {
		super();
		this.wbid = wbid;
		this.wbname = wbname;
		this.wbfl = wbfl;
		this.wbtx = wbtx;
		this.wbssdw = wbssdw;
		this.wbphone = wbphone;
		this.wbphonenum = wbphonenum;
		this.wbyj = wbyj;
		this.wbjstx = wbjstx;
		this.wbbz = wbbz;
		this.wbxb = wbxb;
	}
	public Wb() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Wb [wbid=" + wbid + ", wbname=" + wbname + ", wbfl=" + wbfl + ", wbtx=" + wbtx + ", wbssdw=" + wbssdw
				+ ", wbphone=" + wbphone + ", wbphonenum=" + wbphonenum + ", wbyj=" + wbyj + ", wbjstx=" + wbjstx
				+ ", wbbz=" + wbbz + ", wbxb=" + wbxb + "]";
	}
	
	
	

}
