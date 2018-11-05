package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;
//薪资发放申请
public class Paygrantapply implements Serializable {
	@Id
    private Integer applyid;

    private String theme;//主题

    private String status;//状态

    private Integer paymonth;//薪资月份

    private Integer socialmonth;//社保月份

    private String url;//绩效考勤表

    private String field1;//总支出

    private String field2;//薪资支出

    private String field3;//社保支出

    private String createpeople;//创建人

    private String createdate;//创建时间

    private static final long serialVersionUID = 1L;

    public Integer getApplyid() {
        return applyid;
    }

    public void setApplyid(Integer applyid) {
        this.applyid = applyid;
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

    public Integer getPaymonth() {
        return paymonth;
    }

    public void setPaymonth(Integer paymonth) {
        this.paymonth = paymonth;
    }

    public Integer getSocialmonth() {
        return socialmonth;
    }

    public void setSocialmonth(Integer socialmonth) {
        this.socialmonth = socialmonth;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
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

    public String getCreatepeople() {
        return createpeople;
    }

    public void setCreatepeople(String createpeople) {
        this.createpeople = createpeople == null ? null : createpeople.trim();
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate == null ? null : createdate.trim();
    }
}