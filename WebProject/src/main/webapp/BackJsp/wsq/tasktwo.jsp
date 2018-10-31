<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'External.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	
	<!--悬浮样式  -->
	  <link rel="stylesheet" href="BackJsp/wsq/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/wsq/css/view.css">
  <script type="text/javascript" src="BackJsp/wsq/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/wsq/js/view.js"></script>
		<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<%=basePath%>assets/cssiew.css">
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiewCn.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiew.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsue.min.js"></script>

  
  </head>
  
  <body>
  
 <table cellpadding="0" cellspacing="0" border="0" style="margin-top:30px;">
 <tbody>
 <tr>
   <td>
   <h1 style="margin-left:10px;"><img style="cursor:pointer;" src="BackJsp/wsq/img/menu.png" onclick="var cm=document.getElementById(&#39;colloaMenu&#39;); if(cm.style.display==&#39;none&#39;) cm.style.display=&#39;inline&#39;; else cm.style.display=&#39;none&#39;;"> 全部工作计划</h1>
   </td>
 <td align="right">
 <button id="save" class="btn" style="padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><a href="BackJsp/wsq/jihua.jsp"><b>+</b>新增工作计划</a></button>
   <!--  <a href="#">这是一个超链接</a> -->
 </td>
 </tr></tbody></table><br>

<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed;">
<colgroup>
<col width="20%"><col width="2%"><col>
</colgroup>
<tbody>
<tr valign="top">
<td>
<table cellpadding="0" cellspacing="0" border="0" class="tableList" style="margin-left:10px ;">
<thead>
<tr>
 <th style="padding-left:16px;">分类</th>
</tr>
</thead>
<tbody>
  
<tr id="dataCount">
<td style="padding:16px" class="treeOfNavigation">
 <a class="textHighlight" @click="flush(1)"><img src="BackJsp/wsq/img/folder.png" border="0"> (显示所有) <span class="tipCount">{{AllCountker}}</span> </a>
<a @click="querytypelis('年度')" ><img src="BackJsp/wsq/img/folder.png" border="0" > 年度计划  <span class="tipCount">{{AllCount}}</span> </a>
<a @click="querytypelis('季度')" ><img src="BackJsp/wsq/img/folder.png" border="0"  >季度计划<span class="tipCount">{{onJob}}</span></a>
<a @click="querytypelis('月度')" ><img src="BackJsp/wsq/img/folder.png" border="0"> 月度计划 <span class="tipCount">{{onTrial}}</span></a>
<a @click="querytypelis('周')" ><img src="BackJsp/wsq/img/folder.png" border="0"> 周计划<span class="tipCount">{{temporary}}</span></a>
<a @click="querytypelis('项目')" ><img src="BackJsp/wsq/img/folder.png" border="0"> 项目计划 <span class="tipCount">{{retire}}</span></a>
<a @click="querytypelis('其他')" ><img src="BackJsp/wsq/img/folder.png" border="0"> 其他计划<span  class="tipCount">{{dimission}}</span></a>
</td>
</tr>
</tbody>
</table>
</td>
<td></td>

<td>

<table id="app" cellpadding="0" cellspacing="0" border="0" class="tableList">

 <tr>
   <td><img src="BackJsp/wsq/img/priority0.gif">计划名称</td>
  <td>创建人</td>
  <td>所属部门</td>
  <td>开始时间</td>
  <td>结束时间</td>
  </tr>
   <tbody id="tbody">
       <tr v-for="a in list">
         <td><a :href="'plan/planQuerys?id='+a.pid"><img src="BackJsp/wsq/img/userX0.gif" border="0">{{a.pname}}</a></td>
         <td>{{a.username}}</td>
         <td>{{a.deptName}}</td>
         <td>{{a.ksdate}}</td>
         <td>{{a.jsdate}}</td>
       </tr>
   </tbody>

 
 </table>

	<span id="pageUtil">
	 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a>
	 <a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a>
	 <span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span>
	 <a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a>
	 <a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a>
	 </span>


</td></tr></tbody>
</table>


</body></html>
<script type="text/javascript" src="BackJsp/wsq/js/jquery-1.8.3.min.js"></script>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
       var pageUtil=new Vue({
            el:'#pageUtil',
            data:{
               part:0,
               criteria:null,
               pageInfo:null
            },
            methods:{
               execute:function(pageNum){
              
               if(this.part==0){
                 var url="plan/getAlltwo";
                 this.$http.post(url,{pageNum:pageNum},{emulateJSON:true}).then(function(res){
                     page.list=res.body.list;
                     this.pageInfo=res.body;
                 })
               }else if(this.part==1){
                  var url="plan/queryertWSQ";
              
                   this.$http.post(url,{
                   		pageNum:pageNum,
                   		type:this.criteria
                   	},{emulateJSON:true}).then(function(res){
                   
		              	 page.list=res.body.list;
		              
		               	this.pageInfo=res.body 
                 	})
                  }
               }
           
            }
       })
        var page=new Vue({
		    el:'#app',
		    data:{
		      list:null,
		      pageInfo:null
		    },methods:{
		        execute:function(PageNum){
			        pageUtil.part=0;//设置全部加载
			        pageUtil.execute(PageNum);//加载数据
		        }
		    }
		  })
		    var dataCount=new Vue({
		    el:"#dataCount",
		    data:{
		       AllCountker:0,
		       AllCount:0,
		       onJob:0,
		       onTrial:0,
		       temporary:0,
		       retire:0,
		       dimission:0
		    },methods:{
		      querytypelis:function(criteria){
		            pageUtil.part=1;//设置为部分加载
		            pageUtil.criteria=criteria;//设置部分加载条件
			        pageUtil.execute(1);//加载数据
		       },flush:function(pageNum){
		           pageUtil.part=0;//设置为全部加载
		           page.execute(pageNum);
		       },getAll:function(){
		          var url="plan/classify";
		          this.$http.post(url,{emulateJSON:true}).then(function(res){
		              var array=res.body;
		              for(var i=0;i<array.length;i++){
		                   this.AllCountker+=1;
		                 if(array[i].type=="年度"){
		                   this.AllCount+=1;
		                 }else if(array[i].type=="季度"){
		                   this.onJob+=1;
		                 }else if(array[i].type=="月度"){
		                   this.onTrial+=1;
		                 }else if(array[i].type=="周"){
		                   this.temporary+=1;
		                 }else if(array[i].type=="项目"){
		                   this.retire+=1;
		                 }else if(array[i].type=="其他"){
		                   this.dimission+=1;
		                 }
		              }
		          
		          })
		       }
		    }
		 
		})
        pageUtil.execute(1);//检索数据
        dataCount.getAll();//检索数据量
        

  })
</script>
