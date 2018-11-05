package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Itinfor;

public interface ItinforService {
	public void itInsert(Itinfor i);
	public List<Itinfor> select();
	public List<Map> selectDim(String key);
	public List<Map> selectDetailed(Integer iid);
	public List<Map> selectState();
	public void updateIdState(Integer iid);
	public List<Map> selectMeItinfor(Integer did);
	public void updateIdStateOne(Integer iid);
	public List<Map> selectStateOne();
	 //关闭项目
    public void updateIdStateTwo(Integer iid);
    public List<Map> selectStateTwo();
    public List<Map> selectUsers();
    public void updateOrganization(Itinfor i);
    public List<Map> selectUsersName();
    public void updateItworkplan(Itinfor i);
}
