package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Contract;

import tk.mybatis.mapper.common.Mapper;

public interface ContractMapper extends Mapper<Contract> {




    public List<Map> selectAllByKey(@Param("key") String key);
    //执行中的合同
    public void updateid(Integer ctid);
    //关闭的合同
    public void updateOne(Integer ctid);
    //搁置的合同
    public void updateTwo(Integer ctid);
    //撤销的合同
    public void updateThree(Integer ctid);
    
    List<Map<String, String>> getOne(Integer contractid);
    
}