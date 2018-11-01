package com.aaa.service;

import java.util.List;

import com.aaa.bean.Car;


public interface CarService{
	public Car selectCar(Integer id);
	public List<Car> getAll(); 
	public int inserCar(Car car);
	public boolean updateCar(Car car);
	public int deleteCar(Integer id);

}
