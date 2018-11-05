package com.aaa.service;

import java.util.List;

import com.aaa.bean.Metting;

public interface MettingService {
	public Metting selectMetting(Integer id);
	public List<Metting> getAll(); 
	public int insertMetting(Metting metting);
	public boolean updateMetting(Metting metting);
	public int deleteMetting(Integer id);
}
