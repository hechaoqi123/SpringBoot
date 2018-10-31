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
  					uid:null
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
									"<td><a>"+data.body[mytransaction].trname+"</a></td>"+
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
function towModileAllocation (trid){
	usersVue.trid = trid;
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
		trueTrans:"",
		falseTrans:"",
		userstowmodiles:"",
		trid:0,
		pname:""
	},
	methods:{
		getUsers:function(){
			this.$http.post("DuthorityManagementController/getTran",{
					trid:this.trid,
					pname:this.pname
			},{emulateJSON: true}).then(function(data) {
			this.trueTrans = data.body.trueTrans;
			this.falseTrans = data.body.falseTrans;
		}, function(dataError) {
			
		})
	},
	shiftTrueUser:function(pid){
		this.$http.post("DuthorityManagementController/delTran",{
			pid:pid,
			trid:this.trid
		},{emulateJSON: true}).then(function(data) {
			this.getUsers();
		}, function(error) {
			
		})
		
	},
	shiftFalseTran:function(pid){
		this.$http.post("DuthorityManagementController/addTran",{
			pid:pid,
			trid:this.trid
		},{emulateJSON: true}).then(function(data) {
			this.getUsers();
		}, function(error) {
			
		})
	}
  }
}); 