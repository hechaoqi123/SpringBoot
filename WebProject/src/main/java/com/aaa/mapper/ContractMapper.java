package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Contract;

public interface ContractMapper {
    int deleteByPrimaryKey(Integer contractid);

    int insert(Contract record);

    int insertSelective(Contract record);

  //  Contract selectByPrimaryKey(Integer contractid);

    int updateByPrimaryKeySelective(Contract record);

    int updateByPrimaryKey(Contract record);
    public List<Map> selectAll(@Param("key") String key);
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