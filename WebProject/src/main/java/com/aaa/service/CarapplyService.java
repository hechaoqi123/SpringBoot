package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.base.BaseService;
import com.aaa.bean.Carapply;

public interface CarapplyService extends BaseService<Carapply>{
	public List<Carapply> getAll(); 
	public int inserCarapply(Carapply carapply);
	public List<Map> getCarapplyDept();
	public List<Map> getCarapplyCar();
	public List<Map> getDept();
	public List<Map> getCar();

}
