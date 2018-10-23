function sund(obj){
		$(".myTr").remove();
		
		var tr = "<tr class='myTr'>"+
					"<td>&nbsp;&nbsp;&nbsp;222</td>"+
					"<td>222</td>"+
					"<td>222</td>"+
					"<td>222</td>"+
					"<td>222</td>"+
				"</tr>";
				//通过after在标签后边追加内容
				$(obj).after(tr);
		
	}
function sundTwo(obj){
	$(".myTr").remove();
	
}

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
			alert(data);
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

var getvo = Vue.http.get(
	  	"/DuthorityManagementController/selectVisitonemodile"
	  ).then(function(data){
		  myTbody.Visitonemodiles=data.body;
		  myTbodytwo.Visitonemodiles=data.body;
		  return data.body;
	  },function(error){
	  	alert(1111);
	  });
var getvt = Vue.http.get(
	  	"/DuthorityManagementController/selectVisittwomodile"
	  ).then(function(data){
		  myTbody.Visittwomodiles=data.body;
		  return data.body;
	  },function(error){
	  	alert(1111);
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