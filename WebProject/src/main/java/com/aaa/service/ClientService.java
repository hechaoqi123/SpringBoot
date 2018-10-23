package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Client;

public interface ClientService {
	public void insert(Client c);
	public Client getone(Integer cid);
	public void update(Client c);
	public List<Client> select();
	public List<Client> selectAll();
	public void delete(Integer cid);
	public List<Map> selectDim(String key);
}
