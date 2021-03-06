<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
</head><body id="colloaBody">
   <form id="subform" action="Performance/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody >
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">

  <input type="text" style="border:0px" readonly="true" value="员工自评" name="status"/>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.responsorSource">
  <input type="text" style="border:0px" readonly="true" name="dutypeople"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.participantsSource"></span></td>
<td>&nbsp; </td></tr></tbody></table>
<div>&nbsp;</div>
<table cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td id="dbf.subject" style="FONT-SIZE: 20px; FONT-WEIGHT: bold; TEXT-ALIGN: center; LINE-HEIGHT: 1" dbf.source="" dbf.type="required">
<textarea id="theme"  name="field20" class="fieldEditable" style="overflow:hidden;height: 40px; font-size: 20px; font-weight: bold; text-align: center;">
<%=new Date().getYear()+1900%>年<%=new Date().getMonth()+1%>月绩效考核单-
</textarea></td></tr></tbody></table>
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
  <input name="applypeople" id="username" value="${detail.username}" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center">所属部门</td>
<td>
   <select id="dept" name="dept" style="border:0px;font-size:14px;width:396px;height:25px;">
    <option v-for="dept in depts"  :value="dept.deptname">{{dept.deptname}}</option>
  </select>
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">岗位或职务</td>
<td id="岗位或职务" dbf.source="" dbf.type="">
  <input name="post" value="${detail.position}" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center">考核类型</td>
<td id="考核类型" dbf.source="" dbf.type="">
  <input type="radio" checked="true" name="type" value="月度" >月度
  <input type="radio" name="type" value="季度" >季度
  <input type="radio" name="type" value="年度" >年度
  <input type="radio" name="type" value="其他" >其他
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
<td rowspan="5">工作态度 (20)</td>
<td>忠诚度 (4)</td>
<td>能否认同公司，忠于公司，热心于本职工作</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>认同感&nbsp;(4)</td>
<td>是否熟悉并贯彻执行公司各项规章制度、政策等；有无违反公司规章制度的行为发生</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>执行力&nbsp;(4)</td>
<td>责任感是否强，确定完成交付的工作；是否用心努力完成，并达到要求</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>工作激情&nbsp;(4)</td>
<td>工作中是否富有激情，敬业，善于付出</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>诚信、担责&nbsp;(4)</td>
<td>工作中是否首先考虑到公司的利益，是否做到诚信、务实，敢于承担责任，不做损害公司之事</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td rowspan="5">工作能力 (30)</td>
<td>工作熟悉程度 (8)</td>
<td>能否熟练掌握工作，并独立有效地进行；能否随机应变的处理工作中的突发事件</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>学习能力 (7)</td>
<td>主动学习各种岗位技能知识，丰富知识面，开拓视野</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>组织和执行能力 (5)</td>
<td>能否制定本岗位所要求的工作计划，并能有效的整合资源，按计划、按要求落实组织执行；能否按时完成领导交办的工作</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>团队协作能力 (5)</td>
<td>是否乐于帮助同事；尽心尽力服从与自己意见相左的决定；与同事相处融洽，能携手完成工作</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>协调沟通能力 (5)</td>
<td>对内与同事们、跨部门，对外与合作单位，是否具备流畅的表达能力和出色的协调沟通能力</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td rowspan="5">工作绩效 (50)</td>
<td>每项工作完成情况 (10)</td>
<td>是否能正确、有效地工作，取得较好的工作结果（完成比例100%为10分，以此类推）</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>重要工作完成率&nbsp;(10)</td>
<td>在被考核的时间段内，对于重要工作事项的完成率（完成比例100%为10分，以此类推）</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>工作满意度&nbsp;(10)</td>
<td>工作表现能否赢得本部门及其他部门领导及员工的表扬和尊重</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>工作投诉率&nbsp;(10)</td>
<td>是否有部门或人员，对该员工的工作及行为方面有投诉</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<tr>
<td>发现和解决问题 (10)</td>
<td>是否能胜任职责范围内规定的工作，工作中是否具有前瞻性，是否能发现问题，是否能提出解决问题的方案，或者合理化建议</td>
<td id="主管评分" dbf.source="" dbf.type="number">&nbsp;</td></tr>
<td style="TEXT-ALIGN: right" colspan="3" dbf.source="" dbf.type="">合计 </td>
<td id="dbf.budget" dbf.source="" dbf.type="number">
  </td>
</tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.source="" dbf.type="">主管评价</td>
<td id="主管评价" style="HEIGHT: 80px" colspan="2" dbf.source="" dbf.type="">&nbsp;</td>
<td id="考核结果" dbf.source="list:A,B,C,D" dbf.type="">&nbsp;</td></tr>

</tbody></table>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="80">
<col></colgroup>
<tbody>
</tbody></table></form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form><br><div id="_vWorkflowActionsShow" align="right">
  <a id="sub" class="button" href="javascript:">提交主管考核</a>
  <a id="ret"class="button" href="javascript:">取消</a>
</div><br></td><td>&nbsp;</td></tr></tbody></table>
</form>
</body></html>
 <script src="BackJsp/hcq/js/Vue.js"></script>
 <script src="BackJsp/hcq/js/vue-resource.min.js"></script>
 <script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
  $(function(){
    //获取应用token https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=ID&corpsecret=SECRECT
      /*  var user=new Array();
       user.push("HeChaoQi");  
        $.ajax({
           url:"https://qyapi.weixin.qq.com/cgi-bin/checkin/getcheckinoption?access_token=sFr-1Qm2ju6w8x7B7Pdo2DQGFRALq46aP3UXkGOPZRnZjwA-YTqAS589-QEL9S5T46cn-qQw1vCM1cLVOrRDYH3MpVMUWAzLJYyxC4U6B4BP0C5e_zVsk5_YBD5h9klFpxYg1U0kjMXAeZk42Qx74sjsyWayKSRTXTmi-jac_7fSn96aReNF2wSU3Uo1hrq17atN919xZNYamHK11U1GZg",
           type:"post",
           dataType:"json",
           data:{
               "datetime": 1542006127,
			   "useridlist":["YiAn"]
           },
           success:function(data){
             alert("success")
           },error:function(){
             alert("error")
           }
        }) */
  
      $("#username").change(function(){
         $("#theme").val(new Date().getYear()+1900+"年"+(new Date().getMonth()+1)+"月绩效考核单-"+$(this).val())
      })
   var deptVue=new Vue({
             el:'#dept',
             data:{
               depts:null
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                     var currentDate=new Date().toLocaleDateString();
                      $("#currentDate").val(currentDate) 
                 })
                 }
             }
       })
       deptVue.getAll();
      $("#currentDate").val(new Date().toLocaleDateString())
      
      $("#sub").click(function(){
         $("#subform").submit();
      
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/performance.jsp";
      })
      })
</script>

