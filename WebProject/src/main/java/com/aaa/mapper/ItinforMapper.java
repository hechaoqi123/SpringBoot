package com.aaa.mapper;

import com.aaa.bean.Itinfor;

public interface ItinforMapper {
    int deleteByPrimaryKey(Integer itemid);

    int insert(Itinfor record);

    int insertSelective(Itinfor record);

    Itinfor selectByPrimaryKey(Integer itemid);

    int updateByPrimaryKeySelective(Itinfor record);

    int updateByPrimaryKey(Itinfor record);
}