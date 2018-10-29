package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Car;

public interface CarMapper {
	public Car getOne(Integer id);
	public List<Car> getAll();
	int insertCar(Car car);
	int updateCar(Car car);

}
