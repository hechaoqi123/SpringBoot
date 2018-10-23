package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Expendmanager;
import com.aaa.mapper.ExpendmanagerMapper;

@Service
public class ExpendManagerServiceImpl implements ExpendManagerService {
   @Autowired
   ExpendmanagerMapper mapper;
   /* (non-Javadoc)
 * @see com.aaa.service.ExpendManagerService#save(com.aaa.bean.Expendmanager)
 */
@Override
@Transactional
   public void save(Expendmanager entity){
	   mapper.insert(entity);
   }
   /* (non-Javadoc)
 * @see com.aaa.service.ExpendManagerService#getAll()
 */
@Override
public List<Expendmanager> getAll(){
	   return mapper.selectAll();
   }
}
