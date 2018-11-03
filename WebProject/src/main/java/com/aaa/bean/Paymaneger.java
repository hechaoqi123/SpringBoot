package com.aaa.bean;

import javax.persistence.Id;

/**
 * Paymaneger entity. @author MyEclipse Persistence Tools
 */

public class Paymaneger implements java.io.Serializable {

	// Fields
    @Id
	private Integer payid;
	private String payname;//项目名称
	private String remark;//描述
	private String type;//类型
	private String calculateway;//计算方式
	private String field1;
	private String field2;

	// Constructors

	/** default constructor */
	public Paymaneger() {
	}

	/** minimal constructor */
	public Paymaneger(Integer payid) {
		this.payid = payid;
	}

	/** full constructor */
	public Paymaneger(Integer payid, String payname, String remark, String type, String calculateway, String field1,
			String field2) {
		this.payid = payid;
		this.payname = payname;
		this.remark = remark;
		this.type = type;
		this.calculateway = calculateway;
		this.field1 = field1;
		this.field2 = field2;
	}

	// Property accessors

	public Integer getPayid() {
		return this.payid;
	}

	public void setPayid(Integer payid) {
		this.payid = payid;
	}

	public String getPayname() {
		return this.payname;
	}

	public void setPayname(String payname) {
		this.payname = payname;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCalculateway() {
		return this.calculateway;
	}

	public void setCalculateway(String calculateway) {
		this.calculateway = calculateway;
	}

	public String getField1() {
		return this.field1;
	}

	public void setField1(String field1) {
		this.field1 = field1;
	}

	public String getField2() {
		return this.field2;
	}

	public void setField2(String field2) {
		this.field2 = field2;
	}

}