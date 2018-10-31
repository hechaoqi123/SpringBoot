
function sundTwo(obj){
	$(".myTr").remove();
}

$(function(){
	ve.selectVisitonemodile();
});
var ve = new Vue({
	el:"#authorityVue",
	data:{
		Visitonemodiles:'',
		Visittwomodiles:'',
		number:0,
		depts:"",
		data:""
	},
	methods:{
		selectVisitonemodile:function(){
  			this.$http.post('DuthorityManagementController/selectVisitonemodile',{
  				//参数
				},{emulateJSON:true}).then(function(data){
					this.Visitonemodiles=data.body;
					myTbodytwo.Visitonemodiles=data.body;
				}),function(error){
					alert(error);
			}
  		},
  		selectVisittwomodile:function(mOneId,event){
  			var el = event.currentTarget;//获取传输对象的元素  通过￥event将元素传输
  			$(".myTr").remove();
  			this.$http.post('DuthorityManagementController/selectVisittwomodile',{
  				mOneId:mOneId
				},{emulateJSON:true}).then(function(data){
					var tr = "";
					var i=0;
					for(var Visittwomodile in data.body){
						tr +=	"<tr class='myTr'>"+ 	
									"<td style='padding-left:40px'>"+ ++i+"</td>"+
			  						"<td>"+data.body[Visittwomodile].mname+"</td>"+
			  						"<td>"+data.body[Visittwomodile].mdescribe+"</td>"+
			  						"<td>"+data.body[Visittwomodile].mOneId+"</td>"+
			  						"<td>"+data.body[Visittwomodile].murl+"</td>"+
			  						"<td>" +
			  							"<img src='../assets/img/user_add.png' width='15px'  onclick='towModileAllocation("+data.body[Visittwomodile].mTowId+")' data-toggle='modal' data-target='#myModal'> "+
				  						"<img src='../assets/images/update.png' width='15px' title='修改'> " +
				  						"<img src='../assets/images/del.png' width='15px' title='删除'>"+
				  					"</td>"+
			  					"</tr>";
					}
					$(el).after(tr);
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

//新增一级菜单
function submitFunction() {
    //这里唯一需要注意的就是这个form-add的id
    var formData = new FormData($("#form-add")[0]);
    $.ajax({
        //接口地址
        url: '/DuthorityManagementController/insertVisitonemodile' ,
        type: 'POST',
        data: formData,
        async: false,
        cache: false,
        contentType: false,
        processData: false,
        success: function (data) {
        	alert(data);
        	$("#form-add input").val("");
        },
        error: function (returndata) {
        }
    });
}

//新增二级菜单
function submitFunctionTwo() {
	//这里唯一需要注意的就是这个form-add的id
	var formData = new FormData($("#formTwo")[0]);
	$.ajax({
		//接口地址
		url: '/DuthorityManagementController/insertVisittwomodile' ,
		type: 'POST',
		data: formData,
		async: false,
		cache: false,
		contentType: false,
		processData: false,
		success: function (data) {
			$("#formTwo input").val("");
		},
		error: function (returndata) {
		}
	});
}
var myTbody = new Vue({
				el:'#myTbody',
				data:{
					Visitonemodiles:'',
					Visittwomodiles:'',
					bool:false
				},
				methods:{
					boolF:function(){
						this.bool = !this.bool;
					}
				}
			});
var myTbodytwo = new Vue({
	el:'#selectTwo',
	data:{
		Visitonemodiles:''
	}
});



//权限分配

function towModileAllocation (mTowId){
	usersVue.mTowId = mTowId;
	usersVue.getUsers();
}
$("#alootUser").click(
	  	function alootUser(){
			  usersVue.getUsers();
		  }
	  );
var usersVue = new Vue({
  	el:"#usersVue",
	data:{
		trueUsers:"",
		falseUsers:"",
		userstowmodiles:"",
		mTowId:0,
		uname:""
	},
	methods:{
		getUsers:function(){
			this.$http.post("Users/aootUser",{
					mTowId:this.mTowId,
					uname:this.uname
			},{emulateJSON: true}).then(function(data) {
			this.trueUsers = data.body.alootTrueUser;
			this.falseUsers = data.body.alootFalseUser;
		}, function(dataError) {
			
		})
	},
	shiftTrueUser:function(uid){
		this.$http.post("Userstowmodile/delUserstowmodile",{
			uid:uid,
			mtowid:this.mTowId
		},{emulateJSON: true}).then(function(data) {
			this.getUsers();
		}, function(error) {
			
		})
		
	},
	shiftFalseUser:function(uid){
		this.$http.post("Userstowmodile/addUserstowmodile",{
	  				uid:uid,
	  				mtowid:this.mTowId
	  			},{emulateJSON: true}).then(function(data) {
	  				this.getUsers();
	  			}, function(error) {
	  				
	  			})
	  		}
	  	}
	}); 