package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Dimission implements Serializable {
	@Id
    private Integer dimissionid;

    private String theme;//主题

    private String applydate;//申请时间

    private String part;//部门

    private String post;//岗位

    private String entrydate;//离职原因

    private String dimissiondate;//预计离职日期

    private String status;//状态

    private String type;//类型

    private String supperremark;//离职原因

    private String dimissionname;//申请人

    private static final long serialVersionUID = 1L;

    public Integer getDimissionid() {
        return dimissionid;
    }

    public void setDimissionid(Integer dimissionid) {
        this.dimissionid = dimissionid;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
    }

    public String getApplydate() {
        return applydate;
    }

    public void setApplydate(String applydate) {
        this.applydate = applydate == null ? null : applydate.trim();
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part == null ? null : part.trim();
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post == null ? null : post.trim();
    }

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate == null ? null : entrydate.trim();
    }

    public String getDimissiondate() {
        return dimissiondate;
    }

    public void setDimissiondate(String dimissiondate) {
        this.dimissiondate = dimissiondate == null ? null : dimissiondate.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getSupperremark() {
        return supperremark;
    }

    public void setSupperremark(String supperremark) {
        this.supperremark = supperremark == null ? null : supperremark.trim();
    }

    public String getDimissionname() {
        return dimissionname;
    }

    public void setDimissionname(String dimissionname) {
        this.dimissionname = dimissionname == null ? null : dimissionname.trim();
    }
}