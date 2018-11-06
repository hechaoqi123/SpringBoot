<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head>
  <base href="<%=basePath%>">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>薪资发放* - Colloa</title>
  <link rel="stylesheet" href="BackJsp/hcq2/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/hcq2/css/view.css">
  <script type="text/javascript" src="BackJsp/hcq2/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/view.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/utility.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/ckeditor.js"></script>
  <style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody">
   <form id="myform" method="post" action="/Baoxiao/save">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><form class="formTaskflow"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">
  <input name="theme" readonly="true" class="fieldEditable"  value="${apply.theme}">
</td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td>
 </td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">
  <c:if test="${apply.status=='填单'}">领导审批</c:if>
  <c:if test="${apply.status!='填单'}">${apply.status}</c:if>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span id="mapping.dbf.responsorSource">
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
</td></tr></tbody></table>
<div>&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>薪资发放申请单</strong></span></div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="90">
<col width="197">
<col width="90">
<col width="280">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="height:30px;TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>创建人姓名</td>
<td>
 ${apply.createpeople}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>创建时间</td>
<td>
  ${apply.createdate}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>薪资月份</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
  ${apply.paymonth}月
</td></tr>

<tr>
<td style="height:30px;TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>社保月份</td>
<td>
 ${apply.socialmonth}月
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>员工总薪资</td>
<td>
 ${apply.field2}
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>社保及公积金</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
 ${apply.field3}
</td></tr>
</tbody>
  </table>
<table id="pagedata" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody id="tb">
<tr style="background:lightyellow;">
<td style="text-align:center;height:30px;">职工工号</td>
<td style="text-align:center">职工姓名</td>
<td style="text-align:center;width:100px">所属部门</td>
<td style="text-align:center">员工职务</td>
<td style="text-align:center">基本薪资</td>
<td style="text-align:center">绩效</td>
<td style="text-align:center">考勤</td>
<td style="text-align:center">五险一金</td>
<td style="text-align:center">个人所得税</td>
<td style="text-align:center">应发工资</td>
<td style="text-align:center">实发工资</td>
</tr>
<!-- 待发放员工薪资详情 -->
<tr v-for="app in datas" style="TEXT-ALIGN: center;height:30px;">
<td style="text-align:center">{{app.userid}}</td>
<td style="text-align:center">{{app.username}}</td>
<td style="text-align:center">{{app.dept}}</td>
<td style="text-align:center">{{app.post}}</td>
<td style="text-align:center">{{app.basemoney}}</td>
<td style="text-align:center">{{app.performance}}</td>
<td style="text-align:center">{{app.checka}}</td>
<td style="text-align:center">{{app.endowmentinsurance+app.unemployment+app.birthinsurance+app.injuryinsurance+app.medicare+app.housingfund}}</td>
<td style="text-align:center">{{app.tallage}}</td>
<td style="text-align:center">{{app.shouldmoney}}</td>
<td style="text-align:center">{{app.realitymoney}}</td>
</tr>
<!-- 总支出 -->
<!-- 分页按钮 -->
<tr style="TEXT-ALIGN: center;height:30px;">
  <td colspan="2" style="text-align:center;">
     总支出（大写）
  </td>
  <td id="daxie" colspan="7" style="text-align:center;">
  </td>
  <td style="text-align:center;">总支出</td>
  <td id="jisuan" style="text-align:center">
     ${apply.field1}
  </td>
</tr>
<!-- 分页按钮 -->
<tr style="TEXT-ALIGN: center;height:30px;">
  <td colspan="11" style="text-align:center;">
  <b>
  <a @click="queryByCriteria(1)">首页</a>
  <a @click="queryByCriteria(pageInfo.pageNum-1)" href="javascript:">上一页</a>
  <span>共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span>
  <a @click="queryByCriteria(pageInfo.pageNum+1)" href="javascript:">下一页</a>
  <a @click="queryByCriteria(pageInfo.pages)"  href="javascript:">尾页</a>
  </b>
</td>
</tr>
</tbody></table>
</span>
<!-- end -->
<table id="tableData" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="50"></colgroup>
<tbody>
</tbody></table>

<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table>
</form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form><br>
  <div id="_vWorkflowActionsShow" align="right">
  </div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" ></a></div>【处理过程】</div>

   <!-- 处理流程 -->
   <div id="approval">
    <span v-for="app in approval">
	<div  style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;">
	  <img src="BackJsp/hcq/img/userX0.gif"> {{app.userid}}<span class="textGray">(  {{app.approvaldate}} )
	</div>
    <div v-show="app.sequence==0" style="padding:0px 10px 5px 30px;">[<b>提交主管审批</b>]{{app.remark}} </div>
    <div v-show="app.sequence==2" style="padding:0px 10px 5px 30px;">[<b>通过转财务处理</b>] {{app.remark}}</div>
    <div v-show="app.sequence==5" style="padding:0px 10px 5px 30px;">[<b>驳回</b>] {{app.remark}}</div>
    <div v-show="app.sequence==3" style="padding:0px 10px 5px 30px;">[<b>结束流程</b>] {{app.remark}}</div>
 </span>
 </div>
   <!-- end -->


</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>
<input id="applyid" value="${apply.applyid}" style="display:none"/>
<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
</form>
</body></html>
<script src="BackJsp/hcq2/js/Vue.js"></script>
<script src="BackJsp/hcq2/js/vue-resource.min.js"></script>
<script src="BackJsp/hcq2/js/jquery-2.0.3.min.js"></script>
<script>
  $("#sub").click(function(){
     $("#myform").submit();
  })
   $("#daxie").html(DX(parseFloat($("#jisuan").html())))
   var id=$("#applyid").val()
   var pagedata=new Vue({
       el:"#pagedata",
       data:{
          datas:null,
          pageInfo:null
       },created:function(){
         this.queryByCriteria(1);
       },methods:{
            queryByCriteria:function(pageNum){
            var url="Pay/queryByCriteria";
           this.$http.post(url,{field2:id,pageNum:pageNum},{emulateJSON:true}).then(function(res){
             this.pageInfo=res.body
             this.datas=res.body.list
           }) 
            }
       }
   })
   new Vue({
     el:"#approval",
     data:{
        approval:null
     },created:function(){
         this.getAll();
     },methods:{
       getAll:function(){
           var url="Approval/queryByCriteria";
           this.$http.post(url,{itemname:"薪资发放申请",itemid:id},{emulateJSON:true}).then(function(res){
              this.approval=res.body
              for(var i=0;i<this.approval.length;i++){
                var approvaldate=this.approval[i].approvaldate;
                this.approval[i].approvaldate=datetimeFormat(approvaldate)              
                }
           })
       },
     }
   })
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
