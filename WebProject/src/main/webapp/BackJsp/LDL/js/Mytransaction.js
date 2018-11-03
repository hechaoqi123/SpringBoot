/**
 * 
 */

$(function(){
	ve.uid = $("#uid").val();
	ve.uname = $("#uname").val();
	ve.selectVisitonemodile();
	ve.getMytransaction();
});
var ve = new Vue({
	el:"#tranVue",
	data:{
		Visitonemodiles:"",
		trans:"",
		uid:0,
		uname:"",
		rightDatas:"",
		pageInfo:"",
		tableName:""
	},
	methods:{
		selectVisitonemodile:function(){
  			this.$http.post('DuthorityManagementController/selectVisitonemodile',{
  					uid:this.uid
				},{emulateJSON:true}).then(function(data){
					this.Visitonemodiles=data.body;
				}),function(error){
					alert(error);
  				}
			},
			getMytransaction:function(){
	  			this.$http.post('DuthorityManagementController/getMytransaction',{
	  				uid:this.uid,
	  				mOneId:-1
					},{emulateJSON:true}).then(function(data){
						this.trans = data.body;
					}),function(error){
						alert(error);
	  				}
			},
			getRightData:function(tableName,pageNum){
				if(tableName != ""){
					this.tableName = tableName;
				}
				this.$http.post('Mytransaction/getRightData',{
					tableName:this.tableName,
					uname:this.uname,
					pageNum:pageNum
					},{emulateJSON:true}).then(function(data){
						this.pageInfo = data.body;
						this.rightDatas = data.body.list;
					}),function(error){
						alert(error);
	  				}
				
			}
  		}
});

/*?var tr = "";
var i=0;
for(var mytransaction in data.body){
	tr +=	"<tr class='myTr'>"+ 	
			"<td style='padding-left:40px'>"+ ++i+"</td>"+
			"<td><a href="+data.body[mytransaction].trurl+">"+data.body[mytransaction].trname+"</a></td>"+
				"<td>&nbsp;10</td>"+
				
			"</tr>";
}
$(el).after(tr);*/