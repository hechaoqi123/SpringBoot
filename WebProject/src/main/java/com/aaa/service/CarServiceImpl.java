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
	public Car selectCar(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	public List<Car> getAll() {
		return mapper.selectAll();
	}

	public int inserCar(Car car) {
		return mapper.insert(car);
	}

	public boolean updateCar(Car car) {
		mapper.updateByPrimaryKeySelective(car);
		return true;
	}

	public int deleteCar(Integer id) {
		return mapper.deleteByPrimaryKey(id);
	}
    
	



}
