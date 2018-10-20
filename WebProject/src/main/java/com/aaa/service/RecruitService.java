package com.aaa.service;

import java.util.List;

import com.aaa.bean.Recruit;

public interface  RecruitService {
  List<Recruit> getAll();

   void save(Recruit recruit);
}
