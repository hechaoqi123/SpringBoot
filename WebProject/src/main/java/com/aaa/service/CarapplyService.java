package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Carapply;

public interface CarapplyService{
	public List<Carapply> getAll(); 
	public int inserCarapply(Carapply carapply);
	public List<Map> getCarapplyDept();
	public List<Map> getCarapplyCar();
	public List<Map> getDept();
	public List<Map> getCar();

}
