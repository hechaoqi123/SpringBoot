<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>事务 - Colloa</title>
  <link rel="shortcut icon" href="http://cloud.10oa.com/trial/images/colloa.ico">
  <link rel="stylesheet" href="BackJsp/hcq2/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/hcq2/css/view.css">
  <script type="text/javascript" src="BackJsp/hcq2/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/view.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/utility.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody"><table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><table style="TABLE-LAYOUT: fixed" class="tableForm" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">${apply.theme}</td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td><input id="dbf.priority" name="dbf.priority" value="-1" type="radio" autocomplete="off" disabled="">低<input id="dbf.priority" name="dbf.priority" value="0" checked="" type="radio" autocomplete="off" disabled="">中<input id="dbf.priority" name="dbf.priority" value="1" type="radio" autocomplete="off" disabled="">高</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">${apply.status}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">&nbsp;</td></tr></tbody></table>
<div>&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>开票申请单</strong></span></div>
<table style="TABLE-LAYOUT: fixed" class="tableListBorder" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="120">
<col width="180">
<col width="100">
<col width="280">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>申请人姓名</td>
<td>${apply.applyname}</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td id="dbf.division" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
    ${apply.dept}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>申请日期</td>
<td style="TEXT-ALIGN: left" id="dbf.time2" dbf.type="date,required" dbf.source="date">
   ${apply.applydate}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">开票说明</td>
<td style="HEIGHT: 80px" id="开票说明" colspan="5" dbf.type="" dbf.source="">
   ${apply.remark}
&nbsp;</td></tr></tbody></table>
<table style="TABLE-LAYOUT: fixed" class="tableListBorder2" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="120">
<col>
<col width="120">
<col width="350"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>对方单位全称</td>
<td id="dbf.text0Source" dbf.type="required" dbf.source="" dbf.key="">
  ${apply.opposite}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">关联合同</td>
<td id="dbf.psid3" dbf.type="" dbf.source="editable,prompt:select sid,keyInfo from taskX where modello=&#39;taskX.contract&#39; and keyInfo like &#39;%[!prompt]%&#39;  order by keyInfo" dbf.key="1001343">
  ${apply.compact}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>开票种类</td>
<td id="dbf.text5" dbf.type="required" dbf.source="">
  ${apply.type}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">纳税人识别号</td>
<td id="纳税人识别号" dbf.type="" dbf.source="">
 ${apply.ratepayer}
&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">开户行及账号</td>
<td id="开户行及账号" dbf.type="" dbf.source="">&nbsp;
 ${apply.bank}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">地址和电话</td>
<td id="地址和电话" dbf.type="" dbf.source="">
 ${apply.address}
&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>开票金额</td>
<td style="COLOR: rgb(60,188,60)" id="dbf.budget" dbf.type="amount,required!0" dbf.source="">
  ${apply.money}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">金额大写</td>
<td id="金额大写" dbf.type="" dbf.source="">
  ${apply.capital}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">开票日期</td>
<td id="dbf.time0" dbf.type="date" dbf.source="date">${apply.date}&nbsp;</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">发票号码</td>
<td id="dbf.text6" dbf.type="" dbf.source="">${apply.idnumber}&nbsp;</td></tr>
 <c:if test="${apply.status!='结束'}">
 <c:if test="${apply.status!='驳回'}">
<tr>
<td style="TEXT-ALIGN: center">备注</td>
<td  style="HEIGHT: 30px" colspan="3" dbf.type="" dbf.source="">
  <input id="remark" class="fieldEditable" name="theme" />
</td></tr>
</c:if>
</c:if>
</tbody></table>
<div>&nbsp;</div>
<table style="TABLE-LAYOUT: fixed" class="tableForm" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table>
<!-- 按钮 -->
 <span id="course">
 <c:if test="${apply.status!='结束'}">
    <c:if test="${apply.status!='驳回'}">
	  <div style="margin:20px 0px;" align="right">
		  <span id="oWorkflowList1">
		    <c:if test="${detail.position=='超级管理员'}">
		      <a class="button" @click="submit('领导')" href="javascript:" ><b>通过</b>[转领导审批]</a>
		    </c:if>
		    <a class="button" @click="submit('人事')" href="javascript:" ><b>通过</b>[转财务]</a>
		    <a class="button" @click="submit('填单人')" href="javascript:" ><b>通过</b>[填单人]</a>
		    <a class="button" @click="submit('结束')" href="javascript:" ><b>结束流程</b></a>
		    <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		 </span>
	 </div>
  </c:if>
  </c:if>
  <!-- 处理流程 -->
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" >› 显示流程图</a></div>【处理过程】</div>
  <span v-for="app in approval">
	<div  style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;">
	  <img src="BackJsp/hcq/img/userX0.gif"> {{app.userid}}<span class="textGray">(  {{app.approvaldate}} )
	</div>
    <div v-show="app.sequence==0" style="padding:0px 10px 5px 30px;">[<b>提交主管审批</b>]{{app.remark}} </div>
    <div v-show="app.sequence==1" style="padding:0px 10px 5px 30px;">[<b>通过并转领导审批</b>] {{app.remark}}</div>
    <div v-show="app.sequence==4" style="padding:0px 10px 5px 30px;">[<b>结束流程</b>] {{app.remark}}</div>
    <div v-show="app.sequence==2" style="padding:0px 10px 5px 30px;">[<b>通过转财务处理</b>] {{app.remark}}</div>
    <div v-show="app.sequence==5" style="padding:0px 10px 5px 30px;">[<b>驳回</b>] {{app.remark}}</div>
    <div v-show="app.sequence==3" style="padding:0px 10px 5px 30px;">[<b>通过转填单人知悉</b>] {{app.remark}}</div>
 </span>
</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table>
</span></td><td>&nbsp;</td></tr></tbody></table>
<input id="recruitid" style="display:none" value="${apply.chequeid}"/>
<input id="uname" style="display:none" value="${detail.username}"/>
</body></html>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
       $(function(){
        new Vue({
              el:"#course",
              data:{
                 approval:null,
              },created:function(){
                 this.getAll();
              },methods:{
                 getAll:function(){
                     var itemid=$("#recruitid").val();
                     var url="Approval/queryByCriteria";
                     this.$http.post(url,{itemname:"开票申请",itemid:itemid},{emulateJSON:true}).then(function(res){
                        this.approval=res.body
                        for(var i=0;i<this.approval.length;i++){
                          var approvaldate=this.approval[i].approvaldate;
                          this.approval[i].approvaldate=datetimeFormat(approvaldate)              
                          }
                     })
                 },submit:function(obj){
                     var itemid=$("#recruitid").val();
                     var remark=$("#remark").val();
                     var principal=$("#uname").val();
                     var url="Chequeapply/update";
                     if(obj=="领导"){//转领导审核
                       this.$http.post(url,{applyname:principal,chequeid:itemid,status:"领导审批",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/expend.jsp";                   
                       })  
                     }else if(obj=="人事"){//转人事
                       this.$http.post(url,{applyname:principal,chequeid:itemid,status:"财务处理",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/expend.jsp";                
                       })  
                     }else if(obj=="填单人"){//转填单人
                       this.$http.post(url,{applyname:principal,chequeid:itemid,status:"填单人知悉",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/expend.jsp";                
                       })  
                     }else if(obj=="结束"){//结束
                       this.$http.post(url,{applyname:principal,chequeid:itemid,status:"结束",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/expend.jsp";                
                       })  
                     }else{//驳回
                       this.$http.post(url,{applyname:principal,chequeid:itemid,status:"驳回",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/expend.jsp";                
                       }) 
                     }
                 }
              }
          })
       })
     function datetimeFormat(longTypeDate){ 
	  var datetimeType = ""; 
	  var date = new Date(); 
	  date.setTime(longTypeDate); 
	  datetimeType+= date.getFullYear();  //年 
	  datetimeType+= "-" + getMonth(date); //月  
	  datetimeType += "-" + getDay(date);  //日 
	  datetimeType+= "  " + getHours(date);  //时 
	  datetimeType+= ":" + getMinutes(date);   //分
	  datetimeType+= ":" + getSeconds(date);   //分
	  return datetimeType;
	} 
	//返回 01-12 的月份值  
	function getMonth(date){ 
	  var month = ""; 
	  month = date.getMonth() + 1; //getMonth()得到的月份是0-11 
	  if(month<10){ 
	    month = "0" + month; 
	  } 
	  return month; 
	} 
	//返回01-30的日期 
	function getDay(date){ 
	  var day = ""; 
	  day = date.getDate(); 
	  if(day<10){ 
	    day = "0" + day; 
	  } 
	  return day; 
	}
	//返回小时
	function getHours(date){
	  var hours = "";
	  hours = date.getHours();
	  if(hours<10){ 
	    hours = "0" + hours; 
	  } 
	  return hours; 
	}
	//返回分
	function getMinutes(date){
	  var minute = "";
	  minute = date.getMinutes();
	  if(minute<10){ 
	    minute = "0" + minute; 
	  } 
	  return minute; 
	}
	//返回秒
	function getSeconds(date){
	  var second = "";
	  second = date.getSeconds();
	  if(second<10){ 
	    second = "0" + second; 
	  } 
	  return second; 
	}
</script>
