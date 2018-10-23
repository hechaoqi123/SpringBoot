package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class reportser implements Serializable {
	@Id
	private Integer reid;
	private String renames;
	private Integer rid;
	public Integer getReid() {
		return reid;
	}
	public void setReid(Integer reid) {
		this.reid = reid;
	}
	public String getRenames() {
		return renames;
	}
	public void setRenames(String renames) {
		this.renames = renames;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	@Override
	public String toString() {
		return "reportser [reid=" + reid + ", renames=" + renames + ", rid=" + rid + "]";
	}

	
}
