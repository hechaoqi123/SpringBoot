package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Income;
import com.aaa.mapper.IncomeMapper;

@Service
public class incomeServiceImpl implements IncomeService {
  @Autowired
  IncomeMapper mapper;
  /* (non-Javadoc)
 * @see IncomeMapper.IncomeService#save(com.aaa.bean.Income)
 */
@Override
@Transactional
  public void save(Income income){
	  mapper.insert(income);
  }
  /* (non-Javadoc)
 * @see IncomeMapper.IncomeService#getAll()
 */
@Override
public List<Income> getAll(){
	  return mapper.selectAll();
  }
}
