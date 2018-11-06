<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html>
<head>
      <base href="<%=basePath%>">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>月度绩效考核单* - Colloa</title>
  <link rel="stylesheet" href="BackJsp/hcq/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/hcq/css/view.css">
  <script type="text/javascript" src="BackJsp/hcq/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/hcq/js/view.js"></script>
  <script type="text/javascript" src="BackJsp/hcq/js/utility.js"></script>
  <script type="text/javascript" src="BackJsp/hcq/js/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody" style="position:relative;left:-50px;margin-top:-30px;padding:0px">
   <form id="subform" action="Performance/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody>
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">
  ${apply.status}
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.responsorSource">

 </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.participantsSource"></span></td>
<td>&nbsp;
 </td></tr></tbody></table>
<div>&nbsp;</div>
<table cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td id="dbf.subject" style="FONT-SIZE: 20px; FONT-WEIGHT: bold; TEXT-ALIGN: center; LINE-HEIGHT: 1" dbf.source="" dbf.type="required">

<div id="e.dbf.subject" name="field20"  style="border:0px;height: 40px;background:#fff;font-size: 20px; font-weight: bold; text-align: center;" readonly="true">
       ${apply.field20}
</div></td></tr>

</tbody></table>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="100">
<col width="350">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center">被考核人</td>
<td>
  ${apply.applypeople}
</td>
<td style="TEXT-ALIGN: center">所属部门</td>
<td>
  ${apply.dept}
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">岗位或职务</td>
<td id="岗位或职务" dbf.source="" dbf.type="">
  ${apply.post}
</td>
<td style="TEXT-ALIGN: center">考核类型</td>
<td id="考核类型" dbf.source="" dbf.type="">
   ${apply.type}
  </td></tr></tbody></table>
<div>&nbsp;</div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="80">
<col width="150">
<col>
<col width="80">
<col width="1"></colgroup>
<tbody>
<tr>
<td><strong>考核维度</strong></td>
<td><strong>考核项目</strong></td>
<td><strong>具体内容和重点</strong></td>
<td><strong>主管评分</strong></td></tr>
<tr>
<td>考勤 (5)</td>
<td>出勤状况 (5)</td>
<td>执行公司考勤制度，无迟到、无早退、无旷工（上述事项有一次，扣1分）</td>
<td id="主管评分" dbf.source="" dbf.type="number">
    <c:if test="${apply.status=='员工自评'}">
     <input id="field1" name="field1" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field1}
    </c:if>
   </td></tr>
<tr>
<td rowspan="5">工作态度 (20)</td>
<td>忠诚度 (4)</td>
<td>能否认同公司，忠于公司，热心于本职工作</td>
<td id="主管评分" dbf.source="" dbf.type="number">
   <c:if test="${apply.status=='员工自评'}">
     <input id="field2" name="field2" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field2}
    </c:if>
</td></tr>
<tr>
<td>认同感&nbsp;(4)</td>
<td>是否熟悉并贯彻执行公司各项规章制度、政策等；有无违反公司规章制度的行为发生</td>
<td id="主管评分" dbf.source="" dbf.type="number">
   <c:if test="${apply.status=='员工自评'}">
     <input id="field3" name="field3" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field3}
    </c:if>
</td></tr>
<tr>
<td>执行力&nbsp;(4)</td>
<td>责任感是否强，确定完成交付的工作；是否用心努力完成，并达到要求</td>
<td id="主管评分" dbf.source="" dbf.type="number">
   <c:if test="${apply.status=='员工自评'}">
     <input id="field4" name="field4" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field4}
    </c:if>
</td></tr>
<tr>
<td>工作激情&nbsp;(4)</td>
<td>工作中是否富有激情，敬业，善于付出</td>
<td id="主管评分" dbf.source="" dbf.type="number">
   <c:if test="${apply.status=='员工自评'}">
     <input id="field5" name="field5" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field5}
    </c:if>
</td></tr>
<tr>
<td>诚信、担责&nbsp;(4)</td>
<td>工作中是否首先考虑到公司的利益，是否做到诚信、务实，敢于承担责任，不做损害公司之事</td>
<td id="主管评分" dbf.source="" dbf.type="number">
  <c:if test="${apply.status=='员工自评'}">
     <input id="field6" name="field6" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field6}
    </c:if>
</td></tr>
<tr>
<td rowspan="5">工作能力 (30)</td>
<td>工作熟悉程度 (8)</td>
<td>能否熟练掌握工作，并独立有效地进行；能否随机应变的处理工作中的突发事件</td>
<td id="主管评分" dbf.source="" dbf.type="number">
   <c:if test="${apply.status=='员工自评'}">
     <input id="field7" name="field7" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field7}
    </c:if>
</td></tr>
<tr>
<td>学习能力 (7)</td>
<td>主动学习各种岗位技能知识，丰富知识面，开拓视野</td>
<td id="主管评分" dbf.source="" dbf.type="number">
  <c:if test="${apply.status=='员工自评'}">
     <input id="field8" name="field8" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field8}
    </c:if>
</td></tr>
<tr>
<td>组织和执行能力 (5)</td>
<td>能否制定本岗位所要求的工作计划，并能有效的整合资源，按计划、按要求落实组织执行；能否按时完成领导交办的工作</td>
<td id="主管评分" dbf.source="" dbf.type="number">
     <c:if test="${apply.status=='员工自评'}">
     <input id="field9" name="field9" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field9}
    </c:if>
</td></tr>
<tr>
<td>团队协作能力 (5)</td>
<td>是否乐于帮助同事；尽心尽力服从与自己意见相左的决定；与同事相处融洽，能携手完成工作</td>
<td id="主管评分" dbf.source="" dbf.type="number">
    <c:if test="${apply.status=='员工自评'}">
     <input id="field10" name="field10" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field10}
    </c:if>
</td></tr>
<tr>
<td>协调沟通能力 (5)</td>
<td>对内与同事们、跨部门，对外与合作单位，是否具备流畅的表达能力和出色的协调沟通能力</td>
<td id="主管评分" dbf.source="" dbf.type="number">
    <c:if test="${apply.status=='员工自评'}">
     <input id="field11" name="field11" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field11}
    </c:if>
</td></tr>
<tr>
<td rowspan="5">工作绩效 (45)</td>
<td>每项工作完成情况 (10)</td>
<td>是否能正确、有效地工作，取得较好的工作结果（完成比例100%为10分，以此类推）</td>
<td id="主管评分" dbf.source="" dbf.type="number">
    <c:if test="${apply.status=='员工自评'}">
     <input id="field12" name="field12" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field12}
    </c:if>
</td></tr>
<tr>
<td>重要工作完成率&nbsp;(10)</td>
<td>在被考核的时间段内，对于重要工作事项的完成率（完成比例100%为10分，以此类推）</td>
<td id="主管评分" dbf.source="" dbf.type="number">
     <c:if test="${apply.status=='员工自评'}">
     <input id="field13" name="field13" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field13}
    </c:if>
</td></tr>
<tr>
<td>工作满意度&nbsp;(8)</td>
<td>工作表现能否赢得本部门及其他部门领导及员工的表扬和尊重</td>
<td id="主管评分" dbf.source="" dbf.type="number">
     <c:if test="${apply.status=='员工自评'}">
     <input id="field14" name="field14" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field14}
    </c:if>
</td></tr>
<tr>
<td>工作投诉率&nbsp;(7)</td>
<td>是否有部门或人员，对该员工的工作及行为方面有投诉</td>
<td id="主管评分" dbf.source="" dbf.type="number">
    <c:if test="${apply.status=='员工自评'}">
     <input id="field15" name="field15" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field15}
    </c:if>
</td></tr>
<tr>
<td>发现和解决问题 (10)</td>
<td>是否能胜任职责范围内规定的工作，工作中是否具有前瞻性，是否能发现问题，是否能提出解决问题的方案，或者合理化建议</td>
<td id="主管评分" dbf.source="" dbf.type="number">
   <c:if test="${apply.status=='员工自评'}">
     <input id="field16" name="field16" class="fieldEditable"/>
    </c:if>
     <c:if test="${apply.status!='员工自评'}">
        ${apply.field16}
    </c:if>
</td></tr>
<td style="TEXT-ALIGN: right" colspan="3" dbf.source="" dbf.type="">
合计 <input id="compute" type="button" value="="/> </td>
<td id="dbf.budget" dbf.source="" dbf.type="number">
  <c:if test="${apply.status=='员工自评'}">
     <input id="field19" name="field19" class="fieldEditable"/>
    </c:if>
      <c:if test="${apply.status!='员工自评'}">
    ${apply.field19}
    </c:if>
</td>
</tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.source="" dbf.type="">自我评价</td>
<td id="自我评价" colspan="4" dbf.source="" dbf.type="">
  ${apply.myremark}
</td></tr>
    
 <c:if test="${apply.status!='结束'}">
 <c:if test="${apply.status!='驳回'}">
<tr>
<td style="TEXT-ALIGN: center">备注</td>
<td  style="HEIGHT: 30px" colspan="3" dbf.type="" dbf.source="">
  <input id="remark" class="fieldEditable"  />
</td></tr>
</c:if>
</c:if> 

</tbody></table>
<div>&nbsp;</div>
<span id="course">
  <table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
<colgroup><col width="60%"><col width="2%"><col></colgroup><tbody>
<tr valign="top"><td class="boxBorder">
  <div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view.htm?1000019,1000481&#39;);return false;"></a></div>【处理过程】</div>
  <span v-for="app in approval"> 
    <div  style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;">
	  <img src="BackJsp/hcq/img/userX0.gif"> {{app.userid}}<span class="textGray">(  {{app.approvaldate}} )
	</div>
    <div v-show="app.sequence==0" style="padding:0px 10px 5px 30px;">[<b>提交主管审批</b>]{{app.remark}} </div>
    <div v-show="app.sequence==1" style="padding:0px 10px 5px 30px;">[<b>转领导审批</b>] {{app.remark}}</div>
    <div v-show="app.sequence==2" style="padding:0px 10px 5px 30px;">[<b>转人事处理</b>] {{app.remark}}</div>
    <div v-show="app.sequence==3" style="padding:0px 10px 5px 30px;">[<b>填单人知悉</b>] {{app.remark}}</div>
    <div v-show="app.sequence==4" style="padding:0px 10px 5px 30px;">[<b>结束</b>] {{app.remark}}</div>
  </span>
  </td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr>
  </tbody></table>
  


</span>

</td><td>&nbsp;</td></tr></tbody></table></body>
<input id="recruitid" style="display:none" value="${apply.performanceid}"/>
<input id="uname" style="display:none" value="${detail.username}"/> 
</html>
 <script src="BackJsp/hcq/js/Vue.js"></script>
 <script src="BackJsp/hcq/js/vue-resource.min.js"></script>
 <script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
  $(function(){
    $("#compute").click(function(){
       var number1=parseInt($("#field1").val()); var number2=parseInt($("#field2").val());var number3=parseInt($("#field3").val());var number4=parseInt($("#field4").val());var number5=parseInt($("#field5").val());
       var number6=parseInt($("#field6").val()); var number7=parseInt($("#field7").val()); var number8=parseInt($("#field8").val()); var number9=parseInt($("#field9").val()); var number10=parseInt($("#field10").val()); var number11=parseInt($("#field11").val()); var number12=parseInt($("#field12").val());var number13=parseInt($("#field13").val());
       var number14=parseInt($("#field14").val()); var number15=parseInt($("#field15").val());  var number16=parseInt($("#field16").val());
          $("#field19").val(number1+number2+number3+number4+number5+number6+number7+number8+number9+number10+number11+number12+number13+number14+number15+number16);
    })
   var page=new Vue({
              el:"#course",
              data:{
                 approval:null,
              },created:function(){
                 this.getAll();
              },methods:{
                 getAll:function(){//流程
                     var itemid=$("#recruitid").val();
                     var url="Approval/queryByCriteria";
                     this.$http.post(url,{itemname:"绩效考核",itemid:itemid},{emulateJSON:true}).then(function(res){
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
                     var url="Performance/update";
                     if(obj=="领导"){//转领导审核
                         var form=$("#subform").serialize();
                       this.$http.post(url,{applydate:principal,performanceid:itemid,status:"领导审批",remark:remark,
                                     field1:$("#field1").val(),
                                     field2:$("#field2").val(),
                                     field3:$("#field3").val(),
                                     field4:$("#field4").val(),
                                     field5:$("#field5").val(),
                                     field6:$("#field6").val(),
                                     field7:$("#field7").val(),
                                     field8:$("#field8").val(),
                                     field9:$("#field9").val(),
                                     field10:$("#field10").val(),
                                     field11:$("#field11").val(),
                                     field12:$("#field12").val(),
                                     field13:$("#field13").val(),
                                     field14:$("#field14").val(),
                                     field15:$("#field15").val(),
                                     field16:$("#field16").val(),
                                     field19:$("#field19").val()
                                     },{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/performance.jsp";                   
                       })  
                     }else if(obj=="人事"){//转人事
                       this.$http.post(url,{applydate:principal,performanceid:itemid,status:"人事复核",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/performance.jsp";                
                       })  
                     }else if(obj=="填单人"){//填单人
                       this.$http.post(url,{applydate:principal,performanceid:itemid,status:"填单人知悉",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/performance.jsp";                
                       })  
                     }else if(obj=="结束"){//结束流程
                       this.$http.post(url,{applydate:principal,performanceid:itemid,status:"结束",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/performance.jsp";                
                       })  
                     }else{//驳回
                       this.$http.post(url,{applypeople:principal,performanceid:itemid,status:"驳回",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq/examination/performance.jsp";                
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
      })
</script>

