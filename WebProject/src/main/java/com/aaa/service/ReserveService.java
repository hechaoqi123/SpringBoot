package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Reserve;

public interface ReserveService {
	List<Reserve> getAll();
	int insertReserve(Reserve reserve);
	List<Map> getDept();
	List<Map> getMetting();
	public List<Map> getReserveDept();

}
