/**
 * 
 */
$(function(){
	ve.selectVisitonemodile();
});
var ve = new Vue({
	el:"#authorityVue",
	data:{
		Visittwomodiles:"",
		Visitonemodiles:""
	},
	methods:{
		selectVisitonemodile:function(){
  			this.$http.post('DuthorityManagementController/selectVisitonemodile',{
  					uid:-1
				},{emulateJSON:true}).then(function(data){
					this.Visitonemodiles=data.body;
				}),function(error){
					alert(error);
  				}
			},
			getMytransaction:function(mOneId,event){
	  			var el = event.currentTarget;//获取传输对象的元素  通过$event将元素传输
	  			$(".myTr").remove();
	  			this.$http.post('DuthorityManagementController/getMytransaction',{
	  				mOneId:mOneId
					},{emulateJSON:true}).then(function(data){
						var tr = "";
						var i=0;
						for(var mytransaction in data.body){
							tr +=	"<tr class='myTr'>"+ 	
									"<td style='padding-left:40px'>"+ ++i+"</td>"+
									"<td><a href="+data.body[mytransaction].trurl+">"+data.body[mytransaction].trname+"</a></td>"+
									"<td>" +
			  							"<img src='../assets/img/user_add.png' width='15px'  onclick='towModileAllocation("+data.body[mytransaction].trid+")' data-toggle='modal' data-target='#myModal'> "+
				  						"<img src='../assets/images/update.png' width='15px' title='修改'> " +
				  						"<img src='../assets/images/del.png' width='15px' title='删除'>"+
			  						"</td>"+
			  						
			  					"</tr>";
						}
						$(el).after(tr);
					}),function(error){
						alert(error);
	  				}
			}
  		}
});


//事务管理
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