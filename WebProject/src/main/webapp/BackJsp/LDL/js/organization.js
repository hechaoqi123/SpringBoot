/**
 * 
 */
$(function(){
	ve.getGroupcompanyVue();
	ve.getSubcompanyVue();
	ve.getDeptVue();
	myModalDeptVue.gets();
	
});

var ve = new Vue({
	el:"#organizationVue",
	data:{
		groupcompanys:"",
		subcompanys:"",
		depts:""
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
  		getDeptVue:function(){
  			this.$http.post('DeptController/selectDept',{
  				//参数
				},{emulateJSON:true}).then(function(data){
					this.depts = data.body;
				}),function(error){
					alert(error);
			}
  		}
	}
});

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
/*Vue.http.post('/someUrl', [body], [options]).then(successCallback, errorCallback);
      execute:function(PageNumber){
                   alert(this.part)
                   alert(PageNumber)
                  if(this.part==0){//全部加载
                    var url = '/userdetail/getAllUserdetail';
		             this.$http.post(url,{pageNum:PageNumber},{emulateJSON:true}).then(function(res){
		                page.users=res.body.list
		                this.pageInfo=res.body
		             });
                  }else{//条件加载
                      var url="userdetail/queryByCriteria";
		             this.$http.post(url,{pageNum:1,status:this.criteria},{emulateJSON:true}).then(function(res){
		               page.users=res.body.list;
		             })
                  }
                }
*/