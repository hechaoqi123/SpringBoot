<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<!-- saved from url=(0093)http://cloud.10oa.com/trial/view/item.aspx?catalogue=110300&name=%u4E8B%u52A1&objects=1000481 -->
<html><head>
      <base href="<%=basePath%>">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>事务 - Colloa</title>
  <LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
  <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
  <script type="text/javascript" src="BackJsp/hcq/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/hcq/js/view.js"></script>
  <script type="text/javascript" src="BackJsp/hcq/js/utility.js."></script>
  <script type="text/javascript" src="BackJsp/hcq/js/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody"><table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="60">
<col width="120"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">${apply.theme}</td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td>
</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td colspan="3"><span id="mapping.dbf.procXSource">
 <c:if test="${apply.status=='填单'}">主管审批</c:if>
  <c:if test="${apply.status!='填单'}">${apply.status}</c:if>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.participantsSource"></span></td></tr></tbody></table>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>出差申请单</strong></span></div>
<div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="100">
<col width="180">
<col width="100">
<col width="250">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请人</td>
<td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX&gt;0 and name like &#39;%[!prompt]%&#39; order by name" dbf.key="1000071">
  ${apply.applypeople}</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td id="dbf.division" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000009">
  ${apply.dept}
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请时间</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
  ${apply.applydate}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>出差时间</td>
<td id="dbf.time0" dbf.type="date,required" dbf.source="datetime,editable">
  ${apply.evectiondate}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">~</td>
<td id="dbf.time1" dbf.type="date,required" dbf.source="datetime,editable">
   ${apply.evectionenddate}
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>目的地</td>
<td id="dbf.text5" dbf.type="required" dbf.source="">
  ${apply.destination}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>出差事由</td>
<td id="出差事由" style="HEIGHT: 80px" colspan="5" dbf.type="required" dbf.source="">
  ${apply.cause}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">交通工具</td>
<td colspan="5">&nbsp;
  ${apply.traffic}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">出差报告</td>
<td id="出差汇报" style="HEIGHT: 150px; VERTICAL-ALIGN: top" colspan="5" dbf.type="" dbf.source="">
    <c:if test="${apply.status=='填写出差报告'}">
      <TEXTAREA id="report"  class=fieldEditable style="HEIGHT: 150px">${apply.report}</TEXTAREA> 
    </c:if>
    <c:if test="${apply.status!='填写出差报告'}">
      <TEXTAREA id="report" readonly="flase" class=fieldEditable style="HEIGHT: 150px">${apply.report}</TEXTAREA> 
    </c:if>
   
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">出差结果</td>
<td colspan="5">&nbsp;
    <input id="出差结果" type="radio" readonly="true" value="" name="出差结果" disabled="">目标达成&nbsp;
    <input id="出差结果" type="radio"  readonly="true" name="出差结果" disabled="">目标基本达成 
    <input id="出差结果" type="radio"  readonly="true" name="出差结果" disabled="">目标未达成</td></tr>
    
 <c:if test="${apply.status!='结束'}">
 <c:if test="${apply.status!='驳回'}">
<tr>
<td style="TEXT-ALIGN: center">备注</td>
<td  style="HEIGHT: 30px" colspan="5" dbf.type="" dbf.source="">
  <input id="remark" class="fieldEditable" name="theme" />
</td></tr>
</c:if>
</c:if>    
    </tbody></table></div>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
</table>
 <span id="course">
<div>&nbsp;</div>
 <c:if test="${apply.status!='结束'}">
    <c:if test="${apply.status!='驳回'}">
	  <div style="margin:20px 0px;" align="right">
		  <span id="oWorkflowList1">
		  
		  	<c:choose>
		<c:when test="${detail.position=='超级管理员'}">
			   <a class="button" @click="submit('领导')" href="javascript:" ><b>通过</b>[转领导审批]</a>
		       <a class="button" @click="submit('填单人')" href="javascript:" ><b>通过</b>[转填单人填写出差报告]</a>
		       <a class="button" @click="submit('转主管')" href="javascript:" ><b>通过</b>[转主管审批报告]</a>
		       <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		       <a class="button" @click="submit('结束')" href="javascript:" >结束流程</a>
		</c:when>
		<c:when test="${apply.status=='填单'}">
			<a class="button" @click="submit('领导')" href="javascript:" ><b>通过</b>[转领导审批]</a>
		    <a class="button" @click="submit('填单人')" href="javascript:" ><b>通过</b>[转填单人]</a>
		    <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		</c:when>
		<c:when test="${apply.status=='领导审批'}">
		   <a class="button" @click="submit('填单人')" href="javascript:" ><b>通过</b>[转填单人]</a>
		   <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		</c:when>
		<c:when test="${apply.status=='填写出差报告'}">
		   <a class="button" @click="submit('转主管')" href="javascript:" ><b>通过</b>[转主管审批报告]</a>
		   <a class="button" @click="submit('结束')" href="javascript:" >结束流程</a>
		</c:when>
		<c:when test="${apply.status=='主管审批报告'}">
		   <a class="button" @click="submit('结束')" href="javascript:" >结束流程</a>
		</c:when>
		<c:otherwise>
		   <c:if test="${apply.applypeople==detail.username}"><!-- 填单人 -->
			  <a class="button" @click="submit('结束')" href="javascript:" ><b>结束流程</b></a>
		   </c:if>
		</c:otherwise>
	</c:choose>
		 </span>
	 </div>
  </c:if>
  </c:if>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view.htm?1000019,1000481&#39;);return false;"></a></div>【处理过程】</div>
  <span v-for="app in approval"> 
    <div  style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;">
	  <img src="BackJsp/hcq/img/userX0.gif"> {{app.userid}}<span class="textGray">(  {{app.approvaldate}} )
	</div>
    <div v-show="app.sequence==0" style="padding:0px 10px 5px 30px;">[<b>提交主管审批</b>]{{app.remark}} </div>
    <div v-show="app.sequence==2" style="padding:0px 10px 5px 30px;">[<b>转主管审批报告</b>] {{app.remark}}</div>
    <div v-show="app.sequence==3" style="padding:0px 10px 5px 30px;">[<b>转领导审批</b>] {{app.remark}}</div>
    <div v-show="app.sequence==1" style="padding:0px 10px 5px 30px;">[<b>转填单人填写出差报告</b>] {{app.remark}}</div>
    <div v-show="app.sequence==4" style="padding:0px 10px 5px 30px;">[<b>结束流程</b>] {{app.remark}}</div>
    <div v-show="app.sequence==5" style="padding:0px 10px 5px 30px;">[<b>驳回</b>] {{app.remark}}</div>
  </span>
</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table>
   </span>
</td><td>&nbsp;</td></tr></tbody></table></body>
<input id="recruitid" style="display:none" value="${apply.evectionid}"/>
<input id="uname" style="display:none" value="${detail.username}"/> 
</html>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
  new Vue({
              el:"#course",
              data:{
                 approval:null,
              },created:function(){
                 this.getAll();
              },methods:{
                 getAll:function(){//流程
                     var itemid=$("#recruitid").val();
                     var url="Approval/queryByCriteria";
                     this.$http.post(url,{itemname:"出差申请",itemid:itemid},{emulateJSON:true}).then(function(res){
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
                     var url="Evection/update";
                     if(obj=="领导"){//3
                       this.$http.post(url,{applypeople:principal,evectionid:itemid,status:"领导审批",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/check.jsp";                   
                       })  
                     }else if(obj=="填单人"){//1
                       this.$http.post(url,{applypeople:principal,evectionid:itemid,status:"填写出差报告",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/check.jsp";                
                       })  
                     }else if(obj=="转主管"){//2
                       this.$http.post(url,{applypeople:principal,report:$("#report").val(),evectionid:itemid,status:"主管审批报告",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/check.jsp";                
                       })  
                     }else if(obj=="结束"){//4
                       this.$http.post(url,{applypeople:principal,evectionid:itemid,status:"结束",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/check.jsp";                
                       })  
                     }else{//驳回
                       this.$http.post(url,{applypeople:principal,evectionid:itemid,status:"驳回",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/check.jsp";                
                       }) 
                     }
                 }
              }
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