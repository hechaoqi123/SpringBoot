package com.aaa.bean;

import java.sql.Date;

public class Reserve {
	private Integer rid;
	private String rmotif;
	private String rpriority;
	private Date rendtime;
	private String rproposer;
	private String rdept;
	private String rfilingdate;
	private String rmetting;
	private Date rstarttime;
	private Date rfinishtime;
	private String ruserthing;
	private String rcomment;
	private String rpractical;
	private String raccessory;
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getRmotif() {
		return rmotif;
	}
	public void setRmotif(String rmotif) {
		this.rmotif = rmotif;
	}
	public String getRpriority() {
		return rpriority;
	}
	public void setRpriority(String rpriority) {
		this.rpriority = rpriority;
	}
	public Date getRendtime() {
		return rendtime;
	}
	public void setRendtime(Date rendtime) {
		this.rendtime = rendtime;
	}
	public String getRproposer() {
		return rproposer;
	}
	public void setRproposer(String rproposer) {
		this.rproposer = rproposer;
	}
	public String getRdept() {
		return rdept;
	}
	public void setRdept(String rdept) {
		this.rdept = rdept;
	}
	public String getRfilingdate() {
		return rfilingdate;
	}
	public void setRfilingdate(String rfilingdate) {
		this.rfilingdate = rfilingdate;
	}
	public String getRmetting() {
		return rmetting;
	}
	public void setRmetting(String rmetting) {
		this.rmetting = rmetting;
	}
	public Date getRstarttime() {
		return rstarttime;
	}
	public void setRstarttime(Date rstarttime) {
		this.rstarttime = rstarttime;
	}
	public Date getRfinishtime() {
		return rfinishtime;
	}
	public void setRfinishtime(Date rfinishtime) {
		this.rfinishtime = rfinishtime;
	}
	public String getRuserthing() {
		return ruserthing;
	}
	public void setRuserthing(String ruserthing) {
		this.ruserthing = ruserthing;
	}
	public String getRcomment() {
		return rcomment;
	}
	public void setRcomment(String rcomment) {
		this.rcomment = rcomment;
	}
	public String getRpractical() {
		return rpractical;
	}
	public void setRpractical(String rpractical) {
		this.rpractical = rpractical;
	}
	public String getRaccessory() {
		return raccessory;
	}
	public void setRaccessory(String raccessory) {
		this.raccessory = raccessory;
	}
	public Reserve(Integer rid, String rmotif, String rpriority, Date rendtime, String rproposer, String rdept,
			String rfilingdate, String rmetting, Date rstarttime, Date rfinishtime, String ruserthing, String rcomment,
			String rpractical, String raccessory) {
		super();
		this.rid = rid;
		this.rmotif = rmotif;
		this.rpriority = rpriority;
		this.rendtime = rendtime;
		this.rproposer = rproposer;
		this.rdept = rdept;
		this.rfilingdate = rfilingdate;
		this.rmetting = rmetting;
		this.rstarttime = rstarttime;
		this.rfinishtime = rfinishtime;
		this.ruserthing = ruserthing;
		this.rcomment = rcomment;
		this.rpractical = rpractical;
		this.raccessory = raccessory;
	}
	public Reserve() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	                                                                       

}
