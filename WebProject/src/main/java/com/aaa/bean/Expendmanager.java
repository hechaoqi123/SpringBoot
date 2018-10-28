package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Expendmanager implements Serializable {
	@Id
    private Integer expendid;

    private String expenddate;//支出日期

    private String expendtype;//支出分类	

    private String money;//支出金额

    private String capitalmoney;//大写金额

    private String model;//付款方式

    private String registrant;//申请人

    private String dept;//部门

    private String opposite;//对方单位

    private String compact;//关联合同

    private String remark;//备注信息

    private String field1;//申请人

    private String field2;

    private static final long serialVersionUID = 1L;

    public Integer getExpendid() {
        return expendid;
    }

    public void setExpendid(Integer expendid) {
        this.expendid = expendid;
    }

    public String getExpenddate() {
        return expenddate;
    }

    public void setExpenddate(String expenddate) {
        this.expenddate = expenddate == null ? null : expenddate.trim();
    }

    public String getExpendtype() {
        return expendtype;
    }

    public void setExpendtype(String expendtype) {
        this.expendtype = expendtype == null ? null : expendtype.trim();
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