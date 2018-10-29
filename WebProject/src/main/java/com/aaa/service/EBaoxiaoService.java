package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Baoxiao;
import com.aaa.bean.Baoxiaoitem;

public interface EBaoxiaoService extends BaseService<Baoxiao>{
  public void saveManager(Baoxiao cost, List<Baoxiaoitem> items);
}
