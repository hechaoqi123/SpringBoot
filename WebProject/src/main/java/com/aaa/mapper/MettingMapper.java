package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Metting;

public interface MettingMapper{
	Metting selectMetting(Integer mid);
	List<Metting> getAll();
	int insertMetting(Metting metting); 
    boolean updateMetting(Metting metting);
    int deleteMetting(Integer id);
}
