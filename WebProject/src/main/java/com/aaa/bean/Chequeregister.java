package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Chequeregister implements Serializable {
	@Id
    private Integer chequeid;

    private String theme;//主题

    private String status;//状态

    private String dutypeople;//责任人

    private String registerpeople;//登记人

    private String dept;//部门

    private String registerdate;//登记日期

    private String remark;//备注

    private String opposite;//对方单位

    private String compact;//合同

    private String money;//金额

    private String supermoney;//大写金额

    private String date;//日期

    private String idnumber;//支票编号

    private String field1;

    private String field2;

    private String field3;

    private static final long serialVersionUID = 1L;

    public Integer getChequeid() {
        return chequeid;
    }

    public void setChequeid(Integer chequeid) {
        this.chequeid = chequeid;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getDutypeople() {
        return dutypeople;
    }

    public void setDutypeople(String dutypeople) {
        this.dutypeople = dutypeople == null ? null : dutypeople.trim();
    }

    public String getRegisterpeople() {
        return registerpeople;
    }

    public void setRegisterpeople(String registerpeople) {
        this.registerpeople = registerpeople == null ? null : registerpeople.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(String registerdate) {
        this.registerdate = registerdate == null ? null : registerdate.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }

    public String getSupermoney() {
        return supermoney;
    }

    public void setSupermoney(String supermoney) {
        this.supermoney = supermoney == null ? null : supermoney.trim();
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
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

    public String getField3() {
        return field3;
    }

    public void setField3(String field3) {
        this.field3 = field3 == null ? null : field3.trim();
    }
}