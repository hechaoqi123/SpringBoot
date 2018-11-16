<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<!-- saved from url=(0093)http://cloud.10oa.com/trial/view/item.aspx?catalogue=110300&name=%u4E8B%u52A1&objects=1001554 -->
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
  <script type="text/javascript" src="BackJsp/hcq2/js/ckeditor.js"></script>
  <style>.cke{visibility:hidden;}</style>
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
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td></td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">${apply.status}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">&nbsp;</td></tr></tbody></table>
<div>&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>费用报销单</strong></span></div>
<table style="TABLE-LAYOUT: fixed" class="tableListBorder" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="120">
<col width="180">
<col width="100">
<col width="283">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>报销人姓名</td>
<td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where statusX&gt;0 and stype=0 and name like &#39;%[!prompt]%&#39; order by name" dbf.value="李萌" dbf.key="1000071">
${apply.username}</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td id="dbf.division" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
${apply.dept}</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>报销日期</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
${apply.baoxiaodate}</td></tr></tbody></table>
<table style="TABLE-LAYOUT: fixed" id="tableData" class="tableListBorder2" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="120">
<col>
<col width="100">
<col width="140">
<col width="80">
<col width="50"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center">支出分类</td>
<td style="TEXT-ALIGN: center">用途说明</td>
<td style="TEXT-ALIGN: center">费用金额</td>
<td style="TEXT-ALIGN: center">对方单位</td>
<td style="TEXT-ALIGN: center">经手人</td>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source=""><input style="WIDTH: 30px" id="增加行" onclick="$addRow(&#39;tableData&#39;,1)" name="增加行" value="+" type="button" disabled=""></td></tr>
<c:forEach items="${items}" var="item">
<tr>
<td id="支出分类" style="text-align:center;" dbf.type="" dbf.source="select sid,name,psid,stype from categoryX where modello=&#39;categoryX.financeX.outgoing&#39; and statusX&gt;0 order by sortId,name" dbf.key="1000026">
${item.type}</td>
<td id="用途说明">
${item.remark}
&nbsp;</td>
<td style="TEXT-ALIGN: right" id="费用金额" dbf.type="amount" dbf.source="">
${item.money}
</td>
<td id="对方单位" dbf.type="" dbf.source="">
${item.opposite}
&nbsp;</td>
<td id="经手人" dbf.type="" dbf.source="">
${item.dutypeople}
&nbsp;</td>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source=""><input style="WIDTH: 30px" id="删除行" onclick="$delRow(this);" name="删除行" value="-" type="button" disabled=""></td></tr>
</c:forEach>
</tbody></table>
<table style="TABLE-LAYOUT: fixed" id="tableData" class="tableListBorder2" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="120">
<col>
<col width="140">
<col width="130"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">合计（大写）</td>
<td id="daxie" dbf.type="" dbf.source=""></td>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">合计<input id="合计按钮" onclick="calculate();" name="合计按钮" value="=" type="button" disabled=""></td>
<td style="TEXT-ALIGN: right; COLOR: rgb(204,0,0)" id="dbf.budget" dbf.type="amount,required" dbf.source="">
  ${apply.total}</td></tr>
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
<div style="TEXT-ALIGN: left">* 填单人根据规定，提交给主管审批。在主管审批或上级审批通过后，请打印本电子单据并且粘贴上原始票据，传递给财务处理。</div>
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
		    <c:choose>
		<c:when test="${apply.username==detail.username}&&${apply.status=='填单人 知悉'}"><!-- 填单人 -->
			  <a class="button" @click="submit('结束')" href="javascript:" ><b>结束流程</b></a>
		</c:when>
		<c:when test="${detail.position=='超级管理员'}">
		    <a class="button" @click="submit('领导')" href="javascript:" ><b>通过</b>[转领导审批]</a>
		    <a class="button" @click="submit('财务')" href="javascript:" ><b>通过</b>[转财务]</a>
		    <a class="button" @click="submit('填单人')" href="javascript:" ><b>通过</b>[填单人]</a>
		    <a class="button" @click="submit('结束')" href="javascript:" ><b>结束流程</b></a>
		    <a class="button" @click="submit('驳回')" href="javascript:">驳回</a>
		</c:when>
		<c:when test="${apply.status=='填单'}">
			<a class="button" @click="submit('领导')" href="javascript:" ><b>通过</b>[转领导审批]</a>
		    <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		</c:when>
		<c:when test="${apply.status=='领导审批'}">
		   <a class="button" @click="submit('财务')" href="javascript:" ><b>通过</b>[转财务]</a>
		   <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		</c:when>
		<c:when test="${apply.status=='财务处理'}">
		   <a class="button" @click="submit('填单人')" href="javascript:" ><b>通过</b>[填单人]</a>
		   <a class="button" @click="submit('驳回')" href="javascript:" >驳回</a>
		</c:when>
	</c:choose>
		 </span>
	 </div>
  </c:if>
  </c:if>
<!-- 处理过程 -->
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:"></a></div>【处理过程】</div>
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
</span>
<!-- END VUE -->
</td><td>&nbsp;</td></tr></tbody></table>
<input id="recruitid" style="display:none" value="${apply.baoxiaoid}"/>
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
                     this.$http.post(url,{itemname:"费用报销申请",itemid:itemid},{emulateJSON:true}).then(function(res){
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
                     var url="Baoxiao/update";
                     if(obj=="领导"){//转领导审核
                       this.$http.post(url,{username:principal,baoxiaoid:itemid,status:"领导审批",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/costManager.jsp";                   
                       })  
                     }else if(obj=="财务"){//转人事
                       this.$http.post(url,{username:principal,baoxiaoid:itemid,status:"财务处理",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/costManager.jsp";                
                       })  
                     }else if(obj=="填单人"){//转填单人
                       this.$http.post(url,{username:principal,baoxiaoid:itemid,status:"填单人知悉",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/costManager.jsp";                
                       })  
                     }else if(obj=="结束"){//结束
                       this.$http.post(url,{username:principal,baoxiaoid:itemid,status:"结束",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/costManager.jsp";                
                       })  
                     }else{//驳回
                       this.$http.post(url,{username:principal,baoxiaoid:itemid,status:"驳回",remark:remark},{emulateJSON:true}).then(function(res){
                           window.location.href="BackJsp/hcq2/examination/costManager.jsp";                
                       }) 
                     }
                 }
              }
          })
       })
       $("#daxie").html(DX(${apply.total}))
       //大写转换
  function DX(n) {
 
        if (!/^(0|[1-9]\d*)(\.\d+)?$/.test(n))
            return "数据非法";
        var unit = "千百拾亿千百拾万千百拾元角分", str = "";
            n += "00";
        var p = n.indexOf('.');
        if (p >= 0)
            n = n.substring(0, p) + n.substr(p+1, 2);
            unit = unit.substr(unit.length - n.length);
        for (var i=0; i < n.length; i++)
            str += '零壹贰叁肆伍陆柒捌玖'.charAt(n.charAt(i)) + unit.charAt(i);
        return str.replace(/零(千|百|拾|角)/g, "零").replace(/(零)+/g, "零").replace(/零(万|亿|元)/g, "$1").replace(/(亿)万|壹(拾)/g, "$1$2").replace(/^元零?|零分/g, "").replace(/元$/g, "元整");
}
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
