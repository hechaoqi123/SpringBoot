package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Revenue implements Serializable {
	@Id
    private Integer revenueid;

    private Integer min;

    private Integer max;

    private Integer ratio;

    private Integer celerity;
    
    private Integer exempt;

    private static final long serialVersionUID = 1L;

    public Integer getRevenueid() {
        return revenueid;
    }

    public void setRevenueid(Integer revenueid) {
        this.revenueid = revenueid;
    }

    public Integer getMin() {
        return min;
    }

    public void setMin(Integer min) {
        this.min = min;
    }

    
    public Integer getExempt() {
		return exempt;
	}

	public void setExempt(Integer exempt) {
		this.exempt = exempt;
	}

	public Integer getMax() {
        return max;
    }

    public void setMax(Integer max) {
        this.max = max;
    }

    public Integer getRatio() {
        return ratio;
    }

    public void setRatio(Integer ratio) {
        this.ratio = ratio;
    }

    public Integer getCelerity() {
        return celerity;
    }

    public void setCelerity(Integer celerity) {
        this.celerity = celerity;
    }
}