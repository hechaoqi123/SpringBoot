package com.aaa.service;

import java.util.List;

import com.aaa.bean.Car;

public interface CarService {
	public Car getOne(Integer id);
	public List<Car> getAll();
    int insertCar(Car car);
    int updateCar(Car car);
}
