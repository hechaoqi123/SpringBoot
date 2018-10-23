package com.aaa.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Gg {
	private int ggId;
	private String ggResponsible;//负责人
	private String ggPriority;//优先级
	private String ggClassify;//分类
	private String ggKeyword;//关键字
	private String ggDept;//部门
	private String ggAccessory;//附件：文件上传
	private String ggTheme;//主题
	private String ggContent;//内容
	private Date ggDate;//创建时间
	private String ggNewdate;//更新时间
	public int getGgId() {
		return ggId;
	}
	public void setGgId(int ggId) {
		this.ggId = ggId;
	}
	public String getGgResponsible() {
		return ggResponsible;
	}
	public void setGgResponsible(String ggResponsible) {
		this.ggResponsible = ggResponsible;
	}
	public String getGgPriority() {
		return ggPriority;
	}
	public void setGgPriority(String ggPriority) {
		this.ggPriority = ggPriority;
	}
	public String getGgClassify() {
		return ggClassify;
	}
	public void setGgClassify(String ggClassify) {
		this.ggClassify = ggClassify;
	}
	public String getGgKeyword() {
		return ggKeyword;
	}
	public void setGgKeyword(String ggKeyword) {
		this.ggKeyword = ggKeyword;
	}
	public String getGgDept() {
		return ggDept;
	}
	public void setGgDept(String ggDept) {
		this.ggDept = ggDept;
	}
	public String getGgAccessory() {
		return ggAccessory;
	}
	public void setGgAccessory(String ggAccessory) {
		this.ggAccessory = ggAccessory;
	}
	public String getGgTheme() {
		return ggTheme;
	}
	public void setGgTheme(String ggTheme) {
		this.ggTheme = ggTheme;
	}
	public String getGgContent() {
		return ggContent;
	}
	public void setGgContent(String ggContent) {
		this.ggContent = ggContent;
	}
	public Date getGgDate() {
		return ggDate;
	}
	public void setGgDate(Date ggDate) {
		this.ggDate = ggDate;
	}
	public String getGgNewdate() {
		return ggNewdate;
	}
	public void setGgNewdate(String ggNewdate) {
		this.ggNewdate = ggNewdate;
	}
	public Gg(int ggId, String ggResponsible, String ggPriority, String ggClassify, String ggKeyword, String ggDept,
			String ggAccessory, String ggTheme, String ggContent, Date ggDate, String ggNewdate) {
		super();
		this.ggId = ggId;
		this.ggResponsible = ggResponsible;
		this.ggPriority = ggPriority;
		this.ggClassify = ggClassify;
		this.ggKeyword = ggKeyword;
		this.ggDept = ggDept;
		this.ggAccessory = ggAccessory;
		this.ggTheme = ggTheme;
		this.ggContent = ggContent;
		this.ggDate = ggDate;
		this.ggNewdate = ggNewdate;
	}
	public Gg() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Gg [ggId=" + ggId + ", ggResponsible=" + ggResponsible + ", ggPriority=" + ggPriority + ", ggClassify="
				+ ggClassify + ", ggKeyword=" + ggKeyword + ", ggDept=" + ggDept + ", ggAccessory=" + ggAccessory
				+ ", ggTheme=" + ggTheme + ", ggContent=" + ggContent + ", ggDate=" + ggDate + ", ggNewdate="
				+ ggNewdate + "]";
	}
	
    
	
	
}
