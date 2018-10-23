package com.aaa.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Id;

public class Income implements Serializable {
	@Id
    private Integer incomeid;

    private String incomedate;//收入日期

    private String incometype;//收入类型

    private String money;//金额

    private String capitalmoney;//大写金额

    private String model;//方式

    private String registrant;//登记人

    private String affiliatedperson;//关联人

    private String dept;//关联部门

    private String opposite;//对方单位

    private String compact;//合同

    private String remark;

    private String field1;

    private String field2;

    private static final long serialVersionUID = 1L;

    public Integer getIncomeid() {
        return incomeid;
    }

    public void setIncomeid(Integer incomeid) {
        this.incomeid = incomeid;
    }


    public String getIncomedate() {
		return incomedate;
	}

	public void setIncomedate(String incomedate) {
		this.incomedate = incomedate;
	}

	public String getIncometype() {
        return incometype;
    }

    public void setIncometype(String incometype) {
        this.incometype = incometype == null ? null : incometype.trim();
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }

    public String getCapitalmoney() {
        return capitalmoney;
    }

    public void setCapitalmoney(String capitalmoney) {
        this.capitalmoney = capitalmoney == null ? null : capitalmoney.trim();
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    public String getRegistrant() {
        return registrant;
    }

    public void setRegistrant(String registrant) {
        this.registrant = registrant == null ? null : registrant.trim();
    }

    public String getAffiliatedperson() {
        return affiliatedperson;
    }

    public void setAffiliatedperson(String affiliatedperson) {
        this.affiliatedperson = affiliatedperson == null ? null : affiliatedperson.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getOpposite() {
        return opposite;
    }

    public void setOpposite(String opposite) {
        this.opposite = opposite == null ? null : opposite.trim();
    }

    public String getCompact() {
        return compact;
    }

    public void setCompact(String compact) {
        this.compact = compact == null ? null : compact.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getField1() {
        return field1;
    }

    public void setField1(String field1) {
        this.field1 = field1 == null ? null : field1.trim();
    }

    public String getField2() {
        return field2;
    }

    public void setField2(String field2) {
        this.field2 = field2 == null ? null : field2.trim();
    }
}