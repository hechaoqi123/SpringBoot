package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Contract;

public interface ContractService {
	//新增合同
	public void insert(Contract ct);
	//分页，以及模糊查新
	public List<Map> selectAll(String key);
	//查新合同详情
	public List<Map<String, String>> query(Integer cid);
	 //执行中的合同
    public void updateid(Integer ctid);
    //关闭的合同
    public void updateOne(Integer ctid);
    //搁置的合同
    public void updateTwo(Integer ctid);
    //撤销的合同
    public void updateThree(Integer ctid);
}
