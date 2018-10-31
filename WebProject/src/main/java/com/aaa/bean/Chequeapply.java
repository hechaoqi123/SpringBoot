package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Chequeapply implements Serializable {
	@Id
    private Integer chequeid;

    private String theme;//主题

    private String status;//状态

    private String dutypeople;//责任人

    private String applyname;//申请人

    private String dept;//部门

    private String applydate;//申请日期

    private String remark;//备注

    private String opposite;//对方单位

    private String compact;//合同编号

    private String type;//支票类型

    private String ratepayer;//纳税人

    private String bank;//银行

    private String address;//地址

    private String money;//金额

    private String capital;//大写金额

    private String date;//日期

    private String idnumber;//支票号码

    private String field1;

    private String field2;

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

    public String getApplyname() {
        return applyname;
    }

    public void setApplyname(String applyname) {
        this.applyname = applyname == null ? null : applyname.trim();
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept == null ? null : dept.trim();
    }

    public String getApplydate() {
        return applydate;
    }

    public void setApplydate(String applydate) {
        this.applydate = applydate == null ? null : applydate.trim();
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getRatepayer() {
        return ratepayer;
    }

    public void setRatepayer(String ratepayer) {
        this.ratepayer = ratepayer == null ? null : ratepayer.trim();
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank == null ? null : bank.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }

    public String getCapital() {
        return capital;
    }

    public void setCapital(String capital) {
        this.capital = capital == null ? null : capital.trim();
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
}