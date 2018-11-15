package com.aaa.bean;

import java.util.List;

public class ArrUtil {
	private List<List<OneUtilEntity>> ch;
	//[{[1,2,3]},{[]}];
	private List<TwoUtilEntity> eh;


	public List<List<OneUtilEntity>> getCh() {
		return ch;
	}

	public void setCh(List<List<OneUtilEntity>> ch) {
		this.ch = ch;
	}

	public List<TwoUtilEntity> getEh() {
		return eh;
	}

	public void setEh(List<TwoUtilEntity> eh) {
		this.eh = eh;
	}
	

}
