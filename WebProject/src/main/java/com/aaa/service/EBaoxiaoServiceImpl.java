package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Baoxiao;
import com.aaa.bean.Baoxiaoitem;
import com.aaa.mapper.BaoxiaoMapper;
import com.aaa.mapper.BaoxiaoitemMapper;
@Service
public class EBaoxiaoServiceImpl extends BaseServiceImpl<Baoxiao> implements EBaoxiaoService {
    @Autowired
    BaoxiaoMapper baoxiao;
    @Autowired
    BaoxiaoitemMapper itemMapper;
    @Transactional
	public void saveManager(Baoxiao cost, List<Baoxiaoitem> items) {
		//添加申请单
		baoxiao.insert(cost);
		//获取最大ID
		Integer id=baoxiao.getMaxId();
		for (Baoxiaoitem item : items) {
			item.setBaoxiaoid(id);
			if(item.getMoney()==null||item.getMoney().equals("0")){
				continue;
			}
		    itemMapper.insert(item);
		}
	}


}
