<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>My JSP 'taskSelectIid.jsp' starting page</title>
    

	  <link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
  </head>
  
  <body>
  		<table  style="margin-left:20px;margin-top:100px;" cellpadding="0" cellspacing="0" border="0" class="tableList" ><thead><tr><th>任务名称</th><th>创建人</th><th>执行人</th><th>开始时间</th><th>结束时间</th><th>工作量</th><th>分解</th></tr></thead>
<tbody id="tab1" style="font-size:12px;">
<c:forEach items="${list}" var="l">
	<tr>
	<c:if test="${l.rwfl=='0'}">
		<td ><a href="task/selectTailedAll?tid=${l.tid}"><i style="color:orange;" ></i><img src="img/ico1.png" style="width:15;height:15;float:left;margin-left:2px;margin-top:0px;"> <span style="color:#cc0000">${l.tname }</span> </a></td>
	
		</c:if>
		<c:if test="${l.rwfl!=0}">
		<td ><a href="task/selectTailedAll?tid=${l.tid}"><i style="color:#8ed646;" ></i><img src="BackJsp/hcq/img/ico2.png " style="width:15;height:15;float:left;margin-left:2px;margin-top:0px;"> <span style="color:#8ed646">${l.tname }</span> </a></td>
		</c:if>
		 <td>${l.username}</td>
		<td>${l.zxr}</td>
		<td>${l.ksdeta}&nbsp;</td>
		<td>${l.jsdeta}&nbsp;</td>
		<td>${l.workload}<i class="fa fa-caret-right"></i> 0</td> 
		<td>+</td>
		</tr>
		</c:forEach>

	</tbody>
</table>
  
  
  	
  
  </body>
</html>

<script src="../../assets/js/jquery-2.0.3.min.js"></script>
	<script src="BackJsp/mh/js/Vue.js"></script>
	<script src="BackJsp/mh/js/vue-resource.min.js"></script>



<script>

 $(function(){
	 
		  var page=new Vue({
		    el :'#tab1',
		    data:{
		      task:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(pageNumber){
		              var url = '/task/selectTask';
		             this.$http.post(url,{pageNum:pageNumber},{emulateJSON:true}).then(function(res){
		                this. task=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1);
		})


</script>


