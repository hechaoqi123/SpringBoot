package com.aaa.service;

import java.util.List;

import com.aaa.bean.Reserve;

public interface ReserveService {
	List<Reserve> getAll();
	int insertReserve(Reserve reserve);

}
