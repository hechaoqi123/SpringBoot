package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Car;
import com.aaa.mapper.CarMapper;
@Service
public class CarServiceImpl implements CarService {

	@Autowired
	CarMapper mapper;
	public Car getOne(Integer id) {
		return mapper.getOne(id);
	}
	
	public List<Car> getAll() {
		return mapper.getAll();
	}
	
	public int insertCar(Car car) {
		return mapper.insertCar(car);
	}
	
	public int updateCar(Car car) {
		return mapper.updateCar(car);
	}

}
