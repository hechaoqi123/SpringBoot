package com.aaa.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Id;

public class Approval implements Serializable {
	@Id
    private Integer approvalid;

    private String userid;//审批人

    private String itemname;//审批项

    private String itemid;//审批申请表

    private String remark;//备注信息

    private Integer sequence;//序号

    private Date approvaldate;//审批日期

    private String field1;

    private String field2;

    private static final long serialVersionUID = 1L;

    public Integer getApprovalid() {
        return approvalid;
    }

    public void setApprovalid(Integer approvalid) {
        this.approvalid = approvalid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getSequence() {
        return sequence;
    }

    public void setSequence(Integer sequence) {
        this.sequence = sequence;
    }

    public Date getApprovaldate() {
        return approvaldate;
    }

    public void setApprovaldate(Date approvaldate) {
        this.approvaldate = approvaldate;
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