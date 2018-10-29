package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Baoxiaoitem implements Serializable {
	@Id
    private Integer itemid;

    private String type;//类型

    private String remark;//备注

    private String money;//金额

    private String opposite;//对方单位

    private String dutypeople;//经手人

    private Integer baoxiaoid;//报销单ID

    private String field1;

    private static final long serialVersionUID = 1L;

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }

    public String getOpposite() {
        return opposite;
    }

    public void setOpposite(String opposite) {
        this.opposite = opposite == null ? null : opposite.trim();
    }

    public String getDutypeople() {
        return dutypeople;
    }

    public void setDutypeople(String dutypeople) {
        this.dutypeople = dutypeople == null ? null : dutypeople.trim();
    }

    public Integer getBaoxiaoid() {
        return baoxiaoid;
    }

    public void setBaoxiaoid(Integer baoxiaoid) {
        this.baoxiaoid = baoxiaoid;
    }

    public String getField1() {
        return field1;
    }

    public void setField1(String field1) {
        this.field1 = field1 == null ? null : field1.trim();
    }
}