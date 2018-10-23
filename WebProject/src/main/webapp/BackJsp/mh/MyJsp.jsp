<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AllContract.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
    <span id="tab1" >
    <table>
	    <tr>
	    	 <tr v-for="ct in contract">
	    	 
	    	 
 			<td class="ktd"><a :href="contract/contractQuery?cid=ct.contractid"><img src="img/customer.gif">{{ct.client}}-{{ct.contracname}}</a></td>
 			
 			
 			<td align=right><a href="">2</a></td>
 			<td align=right>0.00</td>
 			<td align=right><a href="">4</a></td>
 			<td align=right>0.00</td>
 			<td align=right style='color:#85d579;'>0.00</td>
 			<td align=right><a href="">4</a></td>
 			<td align=center></td>
 		</tr> 
	    <tr>
 			<td colspan="8" align=center> 
 			
 			
 				 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
 			</td>
 			<td>
 				<a href="contract/updateid?ctid=1">111</a>
 			</td>
 		</tr>
	 </table>   	
    
    </span>
    
    
    
    
    
    
    
    
    
    
    
    <!--<form id="myform">
  	
  		<select name="clientid" id="clientid">
  			<option>--请选择--</option>
  		</select>
  		<input name="clientid"><br/>
  		<input name="contracplc"><br/>
  		<input name="contraccity"><br/>
  		<input name="contracaddress"><br/>
  		<input name="contracname"><br/>
  		<input name="contracnumber"><br/>
  		<input name="contracmoney"><br/>
  		<input name="signingdate"><br/>
  		<input name="effectivedate"><br/>
  		<input name="saasdate"><br/>
  		<input name="linkman"><br/>
  		<input name="telephone"><br/>
  		<input name="cellphone"><br/>
  		<input name="contracqq"><br/>
  		<input name="terms"><br/>
  		<input name="businessterms"><br/>
  		<input name="department"><br/>
  		<input name="detailid"><br/>
  		<input name="contracstate" value="0"><br/>
  		<input type="button" id="but" value="添加">
  	
  	</form>  	
    
  </body>
</html>

<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
	$(function(){
		$.ajax({
     			url:"client/clientSelect.action",
	 			type:"post",
				dataType:"json",  
				success:function(data){
				
				alert(data[0].clientname)
					for(var i=0;i<data.length;i++){
				var tr="<option value='"+data[i].clientid+"'>"+data[i].clientname+"</option>";
				$("#clientid").append(tr);
				}
				
				}
     	}) 
        
     })
	
	

	
	 $("#but").click(function(){
	 		$.ajax({
	 			url:"contract/contractInsert.action",
	 			type:"post",
	 			data:$("#myform").serialize(),
				dataType:"json",
				success:function(data){
				
					alert("保存成功！");
				},
				error:function(){
				$("#myform").html('')
					  alert("error");
				}
	 		})
	 })
	


</script>
      -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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
		      contract:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(pageNumber){
		              var url = '/contract/selectAll';
		             this.$http.post(url,{pageNum:pageNumber,key:null},{emulateJSON:true}).then(function(res){
		                this. contract=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1);
		})


</script>
