/**
 * 
 */
$(function(){
	gatzuzhi();
	myModalDeptVue.gets();
	
});

function gatzuzhi(){
	ve.getGroupcompanyVue();
	ve.getSubcompanyVue();
}
var ve = new Vue({
	el:"#organizationVue",
	data:{
		groupcompanys:"",
		subcompanys:"",
		depts:"",
		data:""
	},
	methods:{
		getGroupcompanyVue:function(){
  			this.$http.post('GroupcompanyController/selectGroupcompany',{
  				//参数
				},{emulateJSON:true}).then(function(data){
					this.groupcompanys = data.body;
					return data.body;
				}),function(error){
					alert(error);
			}
  		},
  		getSubcompanyVue:function(){
  			this.$http.post('SubcompanyController/selectSubcompany',{
  				//参数
				},{emulateJSON:true}).then(function(data){
					this.subcompanys = data.body;
					return data.body;
				}),function(error){
					alert(error);
			}
  		},
  		getDeptVue:function(scid,event){
  			var el = event.currentTarget;//获取传输对象的元素  通过￥event将元素传输
  			$(".myTr").remove();
  			this.$http.post('DeptController/selectDept',{
  				belong:scid
				},{emulateJSON:true}).then(function(data){
					var tr = "";
					for(var dept in data.body){
						tr +=	"<tr class='myTr'>"+ 	
								"<td style='padding-left:40px'><img src='../assets/images/userX10000.gif'>"+data.body[dept].deptname+"</td>"+
		  						"<td>"+data.body[dept].deptdepict+"</td>"+
		  						"<td>"+data.body[dept].deptjobdescription+"</td>"+
		  						"<td>有效&nbsp;</td>"+
		  						"<td>" +
			  						"<img src='../assets/images/update.png' width='15px' title='修改' v-on:click='updateDept("+data.body[dept].deptid+")'> " +
			  						"<img src='../assets/images/del.png' width='15px' title='删除' onclick='delDept("+data.body[dept].deptid+")'>"+
			  					"</td>"+
		  					"</tr>";
					}
					$(el).after(tr);
					this.data = data;
					this.depts = data.body;
				}),function(error){
					alert(error);
			}
  		},
  		delDept:function(deptid){
  			this.$http.post('DeptController/delDept',{
  				deptid:deptid
				},{emulateJSON:true}).then(function(data) {
					location.reload();
				}, function() {
					
				})
  		},
  		delSub:function(scid){
  			this.$http.post('SubcompanyController/delSub',{
  				scid:scid
				},{emulateJSON:true}).then(function(data) {
					location.reload();
				})
  		}
	}
});

function delDept(deptid){
	ve.delDept(deptid);
}

var myModalSubVue = new Vue({
	el:"#myModalSub",
	data:{},
	methods:{
		formSub:function(){
			$.ajax({
				url:"SubcompanyController/addSubcompany",
				type:"post",
				data:$("#formSub").serialize(),
				dataType:"json",
				success:function(data){
					window.location.reload();
				},
				error:function(error){
				}
			})
		}
	}
});
var myModalDeptVue = new Vue({
	el:"#myModalDept",
	data:{
		getSubs:""
	},
	methods:{
		gets:function(){
			this.$http.post('SubcompanyController/selectSubcompany',{
				},{emulateJSON:true}).then(function(data){
					this.getSubs = data.body;
				}),function(error){
					alert(error);
			}
		},
		addDept:function(){
			$.ajax({
				url:"DeptController/addDept",
				type:"post",
				data:$("#formDept").serialize(),
				dataType:"json",
				success:function(data){
					window.location.reload();
				},
				error:function(error){
				}
			})
		}
	}
});
