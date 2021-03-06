<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!-- saved from url=(0093)http://cloud.10oa.com/trial/view/item.aspx?catalogue=703110&name=%u4E8B%u52A1&objects=1000163 -->
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
</head><body id="colloaBody">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">${apply.theme}</td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td>
</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:
</td>
<td><span id="mapping.dbf.procXSource"> 
<c:if test="${apply.status=='填单'}">提交主管审批</c:if>
<c:if test="${apply.status=='领导审批'}">领导审批</c:if>
<c:if test="${apply.status=='填单人知悉'}">填单人知悉</c:if>
<c:if test="${apply.status=='人事处理'}">人事处理</c:if>
<c:if test="${apply.status=='驳回'}">驳回</c:if>
<c:if test="${apply.status=='结束'}">结束</c:if>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span ></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable"></td></tr></tbody></table>
<div>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>转正申请单</strong></span></div></div>
<div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="150">
<col width="300">
<col width="150">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请人</td>
<td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX&gt;0 and name like &#39;%[!prompt]%&#39; order by name" dbf.key="1000071">
  ${apply.proposer}
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td id="dbf.division" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
   ${apply.department}</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请岗位</td>
<td id="dbf.positionX" dbf.type="required">
  ${apply.post}</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请日期</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
  ${apply.filingdate}</td></tr>
<tr>
<td style="TEXT-ALIGN: center">入职日期</td>
<td id="外语要求">
  ${apply.entrydate}</td>
<td style="TEXT-ALIGN: center">转正日期</td>
<td id="工作地点">
  ${apply.officialdate}</td></tr>
<tr>
<td style="TEXT-ALIGN: center">试用期主要工作内容</td>
<td id="转正原因说明" style="HEIGHT: 80px" colspan="3" dbf.type="" dbf.source="">
  ${apply.workcontent}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">试用期主要工作成绩</td>
<td id="转正原因说明" style="HEIGHT: 80px" colspan="3" dbf.type="" dbf.source="">
  ${apply.workgrade}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">*试用期存在的问题	</td>
<td id="转正原因说明" style="HEIGHT: 80px" colspan="3" dbf.type="" dbf.source="">
  ${apply.issue}
</td></tr>
 <c:if test="${apply.status!='结束'}">
 <c:if test="${apply.status!='驳回'}">
<tr>
<td style="TEXT-ALIGN: center">备注</td>
<td  style="HEIGHT: 30px" colspan="3" dbf.type="" dbf.source="">
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
  <span id="course"><br/>
         <span>
      <c:choose>
        <c:when test="${apply.proposer==detail.username}"><!-- 填单人 -->
			  <a  style="margin-left:820px" class="button" @click="submit('结束')" href="javascript:" ><b>结束流程</b></a>
		 </c:when>
		<c:when test="${detail.position=='超级管理员'}">
		      <a style="margin-left:290px" class="button" @click="submit('领导')" href="javascript:" ><b>通过</b>[转领导审批]</a>
			  <a class="button" @click="submit('人事')" href="javascript:" ><b>通过</b>[转人事]</a>
			  <a class="button" @click="submit('填单人')" href="javascript:" ><b>通过</b>[转填单人]</a>
			  <a class="button" @click="submit('结束')" href="javascript:" ><b>结束流程</b></a>
			  <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		</c:when>
		<c:when test="${detail.dependence=='人事部'&&detail.position=='人事主管'}">
		      <a style="margin-left:550px"  class="button" @click="submit('领导')" href="javascript:" ><b>通过</b>[转领导审批]</a>
			  <a class="button" @click="submit('人事')" href="javascript:" ><b>通过</b>[转人事]</a>
			  <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		</c:when>
		<c:otherwise>
		  <c:if test="${detail.dependence=='总经办'}"><!-- 总经办员工 -->
			  <a  style="margin-left:550px" class="button" style="margin-left:100px" @click="submit('人事')" href="javascript:" ><b>通过</b>[转人事]</a>
			  <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		  </c:if>
		  <c:if test="${detail.dependence=='人事部'}"><!-- 人事部员工 -->
			  <a style="margin-left:650px" class="button"  @click="submit('填单人')" href="javascript:" ><b>通过</b>[转填单人]</a>
			  <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		  </c:if>
		</c:otherwise>
		</c:choose>
		<br/>
		</span>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" ></a></div>【处理过程】</div>
  <span v-for="app in approval">
	<div  style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;">
	  <img src="BackJsp/hcq/img/userX0.gif"> {{app.userid}}<span class="textGray">(  {{app.approvaldate}} )
	</div>
    <div v-show="app.sequence==0" style="padding:0px 10px 5px 30px;">[<b>提交主管审批</b>]{{app.remark}} </div>
    <div v-show="app.sequence==1" style="padding:0px 10px 5px 30px;">[<b>通过并转领导审批</b>] {{app.remark}}</div>
    <div v-show="app.sequence==3" style="padding:0px 10px 5px 30px;">[<b>通过转人事处理</b>] {{app.remark}}</div>
    <div v-show="app.sequence==4" style="padding:0px 10px 5px 30px;">[<b>填单人知悉</b>] {{app.remark}}</div>
    <div v-show="app.sequence==2" style="padding:0px 10px 5px 30px;">[<b>结束流程</b>] {{app.remark}}</div>
    <div v-show="app.sequence==5" style="padding:0px 10px 5px 30px;">[<b>驳回</b>] {{app.remark}}</div>
 </span>
</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table>
</span></td><td>&nbsp;</td></tr></tbody></table>
<input id="recruitid" style="display:none" value="${apply.officialid}"/>
<input id="uname" style="display:none" value="${detail.username}"/> 
</body>
</html>
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
                     this.$http.post(url,{itemname:"转正申请",itemid:itemid},{emulateJSON:true}).then(function(res){
                        this.approval=res.body
                        for(var i=0;i<this.approval.length;i++){
                          var approvaldate=this.approval[i].approvaldate;
                          this.approval[i].approvaldate=datetimeFormat(approvaldate)              
                          }
                     })
                 },submit:function(obj){//提交
                     var itemid=$("#recruitid").val();//申请表ID
                     var remark=$("#remark").val();//备注信息
                     var principal=$("#uname").val();//用户信息
                     var url="Official/update";
                     if(obj=="领导"){//转领导审核
                       this.$http.post(url,{proposer:principal,officialid:itemid,status:"领导审批",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/recruit.jsp";                   
                       })  
                     }else if(obj=="人事"){//转人事
                       this.$http.post(url,{proposer:principal,officialid:itemid,status:"人事处理",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/recruit.jsp";                
                       })  
                     }else if(obj=="填单人"){//转领导审核
                       this.$http.post(url,{proposer:principal,officialid:itemid,status:"填单人知悉",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/recruit.jsp";                   
                       })  
                     }else if(obj=="结束"){//转领导审核
                       this.$http.post(url,{proposer:principal,officialid:itemid,status:"结束",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/recruit.jsp";                   
                       })  
                     }else{//驳回
                       this.$http.post(url,{proposer:principal,officialid:itemid,status:"驳回",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/recruit.jsp";                
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
