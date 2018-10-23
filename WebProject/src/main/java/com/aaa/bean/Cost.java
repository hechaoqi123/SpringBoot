package com.aaa.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Id;

public class Cost implements Serializable {
	@Id
    private Integer costid;

    private Date begindate;

    private Date beginaddress;

    private String remark;

    private String field1;

    private String field2;

    private String field3;

    private String field4;

    private String field5;

    private Integer managerid;

    private static final long serialVersionUID = 1L;

    public Integer getCostid() {
        return costid;
    }

    public void setCostid(Integer costid) {
        this.costid = costid;
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getBeginaddress() {
        return beginaddress;
    }

    public void setBeginaddress(Date beginaddress) {
        this.beginaddress = beginaddress;
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

    public String getField3() {
        return field3;
    }

    public void setField3(String field3) {
        this.field3 = field3 == null ? null : field3.trim();
    }

    public String getField4() {
        return field4;
    }

    public void setField4(String field4) {
        this.field4 = field4 == null ? null : field4.trim();
    }

    public String getField5() {
        return field5;
    }

    public void setField5(String field5) {
        this.field5 = field5 == null ? null : field5.trim();
    }

    public Integer getManagerid() {
        return managerid;
    }

    public void setManagerid(Integer managerid) {
        this.managerid = managerid;
    }
}