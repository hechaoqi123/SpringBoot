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
  
  <title>收入管理 - Colloa</title>
  <link rel="stylesheet" href="BackJsp/hcq2/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/hcq2/css/view.css">
  <script type="text/javascript" src="BackJsp/hcq2/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/view.js"></script>
</head><body id="colloaBody"><table style="min-width:980px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top"><td id="colloaContent"><table cellpadding="0" cellspacing="0" border="0"><tbody><tr><td><h1>
<img style="cursor:pointer;" src="BackJsp/hcq2/img/menu.png" > 收入管理</h1></td><td>
<img src="BackJsp/hcq2/img/coins.gif"> 累计收入 <span class="textBig" style="color:#3cbc3c;">8455319.50</span></td>
<td id="oWorkflowList" align="right" width="700px">
          <button id="save" class="btn" style="position:absolute;right:30px;width:150px;margin-left:500px;padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer ">
            <b>+</b>收入登记</button>
</td></tr></tbody></table><br>
<span id="app">
<table cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr>
      <th>收入日期</th>
      <th style="text-align:right;">收入金额</th>
      <th>收入分类</th>
      <th>关联人</th>
      <th>关联部门</th>
      <th>对方单位</th>
      <th>来源</th></tr></thead>
<tbody><tr v-for="income in recruits">
    <td><img src="BackJsp/hcq2/img/time.gif">{{income.incomedate}}</td>
    <td style="color:#3cbc3c;text-align:right;">{{income.money}}</td>
    <td>{{income.incometype}}</td>
    <td>{{income.registrant}}&nbsp;</td>
    <td>{{income.dept}}&nbsp;</td>
    <td>{{income.opposite}}&nbsp;</td>
    <td><a href="javascript:"><img src="BackJsp/hcq2/img/detail.png" width="17" title="来源"></a></td>
    </tr>
</table>
<!-- 分页 -->
<br/>
<span style="margin-left:100px">
 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a></span>
</span>
</span>
</td></tr></tbody></table>
</body></html>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
     $("#save").click(function(){
        window.location.href="BackJsp/hcq2/incomeRegister.jsp"
     })
       var load=new Vue({
            el:'#app',
            data:{
               recruits:null,
               pageInfo:null
            },methods:{
               execute:function(pageNum){
                 var url="/Income/getAll";
                 this.$http.post(url,{pageNum:pageNum},{emulateJSON:true}).then(function(res){
                     this.recruits=res.body.list
                     this.pageInfo=res.body
                 })
               }
            }
       })
     load.execute(1);
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
  })
</script>
