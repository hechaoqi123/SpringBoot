package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;
//薪资表
public class Pay implements Serializable {
    @Id
	private Integer payid;

    private String userid;//用户ID
    
    private String username;//员工姓名
    
    private String dept;//部门名称
    
    private String post;//岗位
    
    private Integer basemoney;//底薪

    private Integer bonus;//项目提成

    private Integer performance;//绩效

    private Integer checka;//考勤

    private Integer endowmentinsurance;//养老保险

    private Integer unemployment;//失业保险	

    private Integer birthinsurance;//生育保险

    private Integer injuryinsurance;//工伤保险

    private Integer medicare;//医疗保险

    private Integer housingfund;//住房公积金

    private Integer tallage;//个人所得税

    private Integer shouldmoney;//应发工资

    private Integer realitymoney;//实发工资

    private String field1;//状态

    private String field2;//申请单id

    private static final long serialVersionUID = 1L;

    public Integer getPayid() {
        return payid;
    }

    public void setPayid(Integer payid) {
        this.payid = payid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public Integer getBasemoney() {
        return basemoney;
    }

    public void setBasemoney(Integer basemoney) {
        this.basemoney = basemoney;
    }

    public Integer getBonus() {
        return bonus;
    }

    public void setBonus(Integer bonus) {
        this.bonus = bonus;
    }

    public Integer getPerformance() {
        return performance;
    }

    public void setPerformance(Integer performance) {
        this.performance = performance;
    }

    public Integer getChecka() {
		return checka;
	}

	public void setChecka(Integer checka) {
		this.checka = checka;
	}

	public Integer getEndowmentinsurance() {
        return endowmentinsurance;
    }

    public void setEndowmentinsurance(Integer endowmentinsurance) {
        this.endowmentinsurance = endowmentinsurance;
    }

    public Integer getUnemployment() {
        return unemployment;
    }

    public void setUnemployment(Integer unemployment) {
        this.unemployment = unemployment;
    }

    public Integer getBirthinsurance() {
        return birthinsurance;
    }

    public void setBirthinsurance(Integer birthinsurance) {
        this.birthinsurance = birthinsurance;
    }

    public Integer getInjuryinsurance() {
        return injuryinsurance;
    }

    public void setInjuryinsurance(Integer injuryinsurance) {
        this.injuryinsurance = injuryinsurance;
    }

    public Integer getMedicare() {
        return medicare;
    }

    public void setMedicare(Integer medicare) {
        this.medicare = medicare;
    }

    public Integer getHousingfund() {
        return housingfund;
    }

    public void setHousingfund(Integer housingfund) {
        this.housingfund = housingfund;
    }

    public Integer getTallage() {
        return tallage;
    }

    public void setTallage(Integer tallage) {
        this.tallage = tallage;
    }

    public Integer getShouldmoney() {
        return shouldmoney;
    }

    public void setShouldmoney(Integer shouldmoney) {
        this.shouldmoney = shouldmoney;
    }

    public Integer getRealitymoney() {
        return realitymoney;
    }

    public void setRealitymoney(Integer realitymoney) {
        this.realitymoney = realitymoney;
    }

    public String getField1() {
        return field1;
    }

    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
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