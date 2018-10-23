<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'vueTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
  </head>
  
  <body>
    <span id="app">
    	{{msg}}
    	<input v-model="msg">
    	<p v-if="bool">Admin</p>
    	<li v-for="li in ids">{{li.id}}</li>
    	<a v-bind:href="hrefs">12121</a>
    	<p v-html="jiadehref"></p>
    </span>
    <span id="box">
    {{msg}}
	    <input v-on:click="get" type="button" value="vueget测试">
    </span>
    <span id="postTest">
    {{asd}}
	    <input v-on:click="post" type="button" value="vuepost测试">
    </span>
    <button onclick="vueAjax()">111111</button>
    
  </body>
  <script type="text/javascript">
  var vm = new Vue({
  		el : '#app',
  		data : {
  			msg : 'aaaa',
  			bool : true,
  			hrefs : 'www.baidu.com',
  			jiadehref : 'dddddd',
  			ids : [
  				{id : 'hehe'},
  				{id : 'xixi'},
  				{id : 'haha'}
  			]
  		},
  		methods : {
  			sss : function(){
  				alert(this.bool);
  			}
  		}
  	});
  	
 /* function vueAjax(){
  	  Vue.http.get(
	  	"vueTest",{
	  	
	  	params : {
	  		a:"esfsff",
	  		b:"2",
	  		c:[{"li":"11"},{"li":"33"},{"li":"22"}]
	  	}}
	  ).then(function(data){
	  	 alert(data.bodyText);
	  },function(error){
	  	alert(error);
	  });
  }; */
  
  
  /* Vue.http.get(
  	"vueTest",{
	  	params:{
	  		a:"esfsff",
	  		b:"2",
	  		c:[{"li":"11"},{"li":"33"},{"li":"22"}]
	  	}
	  }
  ).then(function(data){
  	 alert(data.bodyText);
  },function(error){
  	alert(error);
  }); */
  var vs = new Vue({
    el:'#box',
    data:{
        msg:'Hello World!',
    },
    methods:{
        get:function(){
            //发送get请求
            this.$http.get('vueTest',{
            	params : {
            		mOneId:11,
            		mname:"张三",
            		mdescribe:"huanli"
            		}
            	}).then(function(data){
	                alert(data.bodyText);    
            },function(){
                console.log('请求失败处理');
            });
        }
    }
});
  
new Vue({
  	el:'#postTest',
  	data:{
  		asd: 'eee'
  	},
  	methods:{
  		post:function(){
  			this.$http.post('postTest',{
	  				params:{
	  					a:"esfsff",
	  					maps:[{"li":"11"},{"li":"33"},{"li":"22"}]
	  				}
  				},{emulateJSON:true}).then(function(data){
  					alert(data.bodyText);
  				}),function(error){
  					alert(error);
  			}
  		}
  	}
  });
  
  	
  	
  </script>
</html>
