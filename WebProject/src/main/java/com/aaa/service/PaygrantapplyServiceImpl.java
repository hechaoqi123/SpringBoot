package com.aaa.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Pay;
import com.aaa.bean.Paygrantapply;
import com.aaa.bean.Paymaneger;
import com.aaa.bean.Post;
import com.aaa.bean.Revenue;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.PayManegerMapper;
import com.aaa.mapper.PayMapper;
import com.aaa.mapper.PaygrantapplyMapper;
import com.aaa.mapper.PostMapper;
import com.aaa.mapper.RevenueMapper;
import com.mysql.jdbc.jdbc2.optional.SuspendableXAConnection;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;
@Service
public class PaygrantapplyServiceImpl extends BaseServiceImpl<Paygrantapply> implements PaygrantapplyService {
	@Autowired
	PaygrantapplyMapper mapper;
	@Autowired
	PayMapper PayMapper;
	@Autowired
	PostMapper postMapper;
	@Autowired
	PayManegerMapper payManagerMapper;
	@Autowired
	RevenueMapper revenueMapper;
	@Autowired
    ApprovalMapper approval;
	
	//计算薪资
	@Transactional
	@Override
	public void saveOfFile(Paygrantapply apply) throws IOException, InvalidFormatException {
		//添加薪资发放申请
		this.mapper.insert(apply);
		Integer maxID=mapper.getMaxId();
		apply.setApplyid(maxID);
		//读取员工绩效考勤信息
		List<Map<String,Object>> list=this.readExcel(apply.getUrl());
		//员工薪资支出
		 Integer total=0;
		for(int i=0;i<list.size();i++){
			 Map<String,Object> row=list.get(i);
			 Pay pay=new Pay();
			 //职工工号
			 pay.setUserid(row.get("UserNum").toString());
			 //姓名
			 pay.setUsername(row.get("UserName").toString());
			 pay.setDept(row.get("dept").toString());
			 pay.setPost(row.get("post").toString());
			 //基础工资
			 pay.setBasemoney(this.getPostMoney(row.get("post").toString()));
			 //计算绩效
			     this.setPerformance(pay,this.converter(row.get("performance").toString()));
			 //计算考勤
				   int[] datas=new int[]{//岗位薪资  迟到数  早退数  事假数
						 pay.getBasemoney(),
						 this.converter(row.get("late").toString()),
						 this.converter(row.get("beforetoLeave").toString()),
						 this.converter(row.get("leave").toString())
				   }; 
			     this.setCheck(pay,apply.getPaymonth(),datas);
			  //设置应发工资  
			     Integer shouldmoney=pay.getBasemoney()+pay.getPerformance()+pay.getChecka();
			     pay.setShouldmoney(shouldmoney);
			  //设置五险一金
			     this.setSocialSecurity(pay);
			  //设置职工个人所得税
			     this.setTax(pay);
			  //状态
			     pay.setField1("待发放");
			  //申请单号   
			     pay.setField2(maxID.toString());
			  //实发工资
			     this.reality(pay);
			   //员工薪资  
			     total+=shouldmoney;
			     PayMapper.insertSelective(pay);
			
		}
		  //单位支出信息
	     this.expend(apply,total);
	     //审核步骤
	     this.saveApproval(apply);
	}
	/**
	 * 添加审核步骤
	 * */
	@Transactional
	private void saveApproval(Paygrantapply apply){
		//添加审核步骤
		 Approval appro=new Approval();
		 appro.setUserid(apply.getCreatepeople());
		 appro.setItemid(apply.getApplyid().toString());
		 appro.setItemname("薪资发放申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
	     approval.insert(appro);
	}
	/**
	 * 统计单位支出
	 * */
	@Transactional
	private void expend(Paygrantapply apply, Integer total) {
		Paymaneger manager=new Paymaneger();
		double tax=0;//总税率
		List<Paymaneger> list = payManagerMapper.selectAll();
		for (Paymaneger paymaneger : list) {
			if(paymaneger.getType().equals("社保")||paymaneger.getType().equals("公积金")){
				tax+=Double.valueOf(paymaneger.getField2());
			}
		}
		Double money=total+(total*tax/100);//总支出
		apply.setField1(money.toString());//
		apply.setField2(total.toString());//员工薪资
		apply.setField3(String.valueOf((total*tax/100)));//员工薪资
		this.mapper.updateByPrimaryKeySelective(apply);
	}
	/**
	 * 读取excel信息
	 * */
	private List<Map<String,Object>> readExcel(String url) throws InvalidFormatException, IOException{
		List<Map<String,Object>> list= new ArrayList<Map<String,Object>>();  
		    File fi=new File(url);
		    XSSFWorkbook wb=new XSSFWorkbook(OPCPackage.open(fi));
			XSSFSheet sheet = wb.getSheet("绩效考勤表");
			Integer lastNumber=sheet.getLastRowNum();
			for(int i=1;i<=lastNumber;i++){//从第二行开始读取
				Map map=new HashMap<String,Object>();
				XSSFRow row = sheet.getRow(i);
				map.put("UserNum", row.getCell(0).toString());//职工工号
				map.put("UserName", row.getCell(1).toString());//职工姓名
				map.put("dept", row.getCell(2).toString());//所在部门
				map.put("post", row.getCell(3).toString());//岗位
				map.put("performance", row.getCell(4).toString());//绩效
				map.put("late", row.getCell(5).toString());//迟到
				map.put("beforetoLeave", row.getCell(6).toString());//早退
				map.put("leave", row.getCell(7).toString());//事假
				list.add(map);
			}
		return list;
	}
	/**
	 * 计算实发工资
	 * */
	private void reality(Pay pay){
		Integer money=pay.getShouldmoney();
		money-=pay.getTallage();
		money-=pay.getHousingfund();
		money-=pay.getMedicare();
		money-=pay.getInjuryinsurance();
		money-=pay.getBirthinsurance();
		money-=pay.getUnemployment();
		money-=pay.getEndowmentinsurance();
		pay.setRealitymoney(money);
	}
	/**
	 * 将double类型的字符串转换为Integer
	 * */
	private Integer converter(String doubleString){
		double number=Double.valueOf(doubleString);
		int data=(int)number;
		return data;
	}
	/**
	 * 计算考勤
	 * */
	private void setCheck(Pay pay, Integer month,int[] datas) {
		 Integer days=31;
		 if(month==2){//2月28天
			 days=28;
		 }
		 List<Integer> list=Arrays.asList(new Integer[]{4,6,9,11});
		 if(list.contains(month)){
			 days=30;
		 }
		 Integer dayMoney = datas[0]/days;
		  //考勤应扣金额：迟到扣20  早退扣50 事假扣当天工资
		 Integer check=(datas[1]*-20)+(datas[2]*-50)+(datas[3]*-dayMoney);
	     pay.setChecka(check);
	}
	/**
	 * 计算员工五险一金
	 * */
	private void setSocialSecurity(Pay pay){
		Paymaneger manager=new Paymaneger();
		manager.setPayname("养老保险");
		double money=pay.getShouldmoney();//应发工资
		double tax=0;//税率
		tax=getTax(manager); 
		pay.setEndowmentinsurance((int) (money*tax/100));
		manager.setPayname("失业保险");
		tax=getTax(manager); 
		pay.setUnemployment((int) (money*tax/100));
		manager.setPayname("生育保险");
		tax=getTax(manager); 
		pay.setBirthinsurance((int) (money*tax/100));
		manager.setPayname("医疗保险");
		tax=getTax(manager); 
		pay.setMedicare((int) (money*tax/100));
		manager.setPayname("工伤保险");
		tax=getTax(manager); 
		pay.setInjuryinsurance((int) (money*tax/100));
		manager.setPayname("住房公积金");
		tax=getTax(manager); 
		pay.setHousingfund((int) (money*tax/100));
		
	} 
	/**
	 * 获取五险一金税率
	 * */
	private double getTax(Paymaneger manager){
		Paymaneger pm=payManagerMapper.selectOne(manager);
		return Double.valueOf(pm.getField1());
	}
	/**
	 * 计算员工绩效
	 * */
	private void setPerformance(Pay pay,Integer performance){
		 //绩效低于90扣200块钱工资
		 if(performance>=90){    
			 pay.setPerformance(0);
		 }else{
			 pay.setPerformance(-200);
		 }
	}
	/**
	 * 计算员工个人所得税
	 * */
	private void setTax(Pay pay){
		Integer ratio=0;//适用税率
		Integer celerity=0;//速扣额
		Integer money=pay.getShouldmoney();//应发工资
		Integer threshold=revenueMapper.getThreshold(); //起征点
		if(money<=threshold){//免税
			pay.setTallage(0);
			return;
		}
		//检索适用税率
		List<Revenue> list = revenueMapper.selectAll();
		for (Revenue revenue : list) {
			Integer min=revenue.getMin();
			Integer max=revenue.getMax();
		    if(revenue.getMax()!=null){//前六级适用税率
		    	if(money>=min&&money<=max){
		    		ratio=revenue.getRatio();
		    		celerity=revenue.getCelerity();
		    		break;
		    	}
		    }else{//最后一级适用税率
		    	if(money>min){
		    		ratio=revenue.getRatio();
		    		celerity=revenue.getCelerity();
		    		break;
		    	}
		    }
		}
		pay.setTallage(((money-threshold)*ratio/100)-celerity);
	}
	/**
	 * 查询岗位薪资
	 * */
	private Integer getPostMoney(String PostName){
		Post post=new Post();
		post.setPname(PostName);
		return postMapper.selectOne(post).getMoney();
	}
	/**
	 * 申请状态变更
	 * */
	@Transactional
	@Override
	public void UpdateAndRemark(Paygrantapply recruit, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(recruit.getCreatepeople());
		 recruit.setCreatepeople(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(recruit);
		 appro.setItemid(recruit.getApplyid().toString());
		 appro.setItemname("薪资发放申请");
		 if(recruit.getStatus().equals("财务处理")){
			 appro.setSequence(2);
		 }
		 if(recruit.getStatus().equals("结束")){
			 Pay p=new Pay();
			 p.setField1("已发放");
			PayMapper.updateStatus(recruit.getApplyid(),"已发放");
		 appro.setSequence(3);
		 }
		 if(recruit.getStatus().equals("驳回")){
			 PayMapper.updateStatus(recruit.getApplyid(),"已驳回");
			 appro.setSequence(5);
		 }
		 appro.setRemark(remark);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	}
}
