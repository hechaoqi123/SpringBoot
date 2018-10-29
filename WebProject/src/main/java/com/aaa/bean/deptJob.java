package com.aaa.bean;

public enum deptJob {
    //成员变量
	总经办("总经办","SS"),
	营销部("营销部","YX"),
	人事部("人事部","RS"),
	财务部("财务部","CW"),
	技术部("技术部","JS"),
	研发部("研发部","YF");
    //成员属性
	private final String name;
	private final String Job;
	//构造方法
	private deptJob(String name,String Job) {
		this.name=name;
		this.Job=Job;
    }
	public String getJob() {
		return Job;
	}
	public String getName() {
		return name;
	}
	
}
