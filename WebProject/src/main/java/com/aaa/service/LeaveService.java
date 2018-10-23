package com.aaa.service;

import java.util.List;

import com.aaa.bean.Leaveapply;

public interface LeaveService {
   public List<Leaveapply> getAll();

   public void save(Leaveapply leave);
}
