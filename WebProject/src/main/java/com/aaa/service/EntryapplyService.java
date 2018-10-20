package com.aaa.service;

import java.util.List;

import com.aaa.bean.Entryapply;

public interface EntryapplyService {

    int save(Entryapply record);

    List<Entryapply> getAll();
}
