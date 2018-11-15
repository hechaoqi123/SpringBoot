package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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
    //查询某个客户的所有合同
    public List<Map> selectOneContract(Integer cid);
    //修改合同
    public void update(Contract ct);
    //查询
    public List<Contract> select();
    public List<Map> selectAllContract(Integer cid);
    //查询审核中的合同
    public List<Map> selectContractState();
  //唯一的合同号
    public int selectMaxId();
    public List<Map> selectHt();
    public void updateContractId(String contracnumber,Integer detailId,Integer contractid);
    
    
    
    
} 
