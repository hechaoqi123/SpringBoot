<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>绩效审核</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
  </head>
  
  <body style="padding-top:15px;padding-left:30px;">
  
  <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:10px;">绩效管理</span>
   <button id="save" class="btn" style="position:absolute;right:10px;width:150px;margin-left:800px;padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>绩效考核</button>
                        </H1></TD>
          <TD align="right" id="oWorkflowList"></TD></TR></TBODY></TABLE><BR>
     <!-- 分类检索 -->
        <div id="colloaMenu2" >
	   <span id="dataCount">
	   <a  class="a" style="color:#000" @click="criteria(0,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 月度绩效考核
  	   <a class="a" @click="criteria(1,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 季度绩效考核
	   </a>
	   <a class="a" @click="criteria(2,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 年度绩效考核
	   </a>
	      <a class="a" @click="criteria(3,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 其他
	   </a>
	   </span>
	 </div>
	    <!-- 数据 -->
     <div id="colloaContent2">
<span id="app">

<!-- 出差申请 -->

<table style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr>
        <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>所属部门</TH>
          <TH>被考核人</TH>
          <TH>主管评分</TH>
          </TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="apply in datas">
          <TD><A :href="'Performance/detail/'+apply.performanceid">
                <img v-if="apply.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
				<img v-else-if="apply.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
				<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
              {{apply.field20}}</A></TD>
          <TD>{{apply.dept}}&nbsp;</TD>
          <TD>{{apply.applypeople}}&nbsp;</TD>
          <TD>{{apply.field19}}</TD>
         </TR>
</TBODY></TABLE><br/>
     <center>
    <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a>
    </center>
    </span>
     
     </DIV></TD></TR></TBODY></TABLE>
</BODY></HTML>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
      $("#save").click(function(){
        window.location.href="BackJsp/hcq/PersonnelApply.jsp"
     })
      $("#save").hover(function(){
        $(this).css("border","1px solid #5ea6eb")
     },function(){
       $(this).css("border","1px solid #E0E0E0")
     })
   //封装全部检索                       
     var dept=$("#aa").val(); 
     var post=$("#bb").val();   
		  var page=new Vue({
		    el :'#app',
		    data:{
		      datas:null,
		      pageInfo:null,
		      tactics:0
		    },
		    methods:{
		        execute:function(PageNumber){ 
		           var status="";//默认查询员工自评状态的申请
	               if(dept=="总经办"){status="领导审批"};//查询状态为领导审批状态的申请
	               if(post=="超级管理员"){status=null}//查询所有申请
		           var url="Performance/queryBycriteria";
		           var type=null;
		           //月度
		           if(this.tactics==0){
			         type="月度";
			       };
			       if(this.tactics==1){
			         type="季度";
			       };
			       if(this.tactics==2){
			         type="年度";
			       };
			       if(this.tactics==3){
			         type="其他";
			       };
		           this.$http.post(url,{pageNum:PageNumber,type:type,status:status},{emulateJSON:true}).then(function(res){
	               this.pageInfo=res.body
	               this.datas=res.body.list;
	              })
		     }
		     }
		})
		//封装数据量及条件检索
		var dataCount=new Vue({
		    el:"#dataCount",
		    data:{
		    },methods:{
		        criteria:function(cri,event){//条件查询
		           page.tactics=cri;
		           target=event.currentTarget;
		           removeClass();
		           $(target).css("color","#000")
		           page.execute(1)
		       }
		    }
		})
		function removeClass(){
		  $(".a").css("color","");
		}
		//调用检索
        page.execute(1);//检索数据
     
     
     
     //css
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
  })
</script>
