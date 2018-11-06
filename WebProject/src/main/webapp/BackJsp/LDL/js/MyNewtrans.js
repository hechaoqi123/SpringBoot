/**
 * 
 */
$(function(){
	ve.uid = $("#uid").val();
	ve.selectVisitonemodile();
});
var ve = new Vue({
	el:"#authorityVue",
	data:{
		Visittwomodiles:"",
		Visitonemodiles:"",
		uid:0
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
			getMytransaction:function(mOneId,event){
	  			var el = event.currentTarget;//获取传输对象的元素  通过$event将元素传输
	  			$(".myTr").remove();
	  			this.$http.post('DuthorityManagementController/getMytransaction',{
	  				uid:this.uid,
	  				mOneId:mOneId
					},{emulateJSON:true}).then(function(data){
						var tr = "";
						var i=0;
						for(var mytransaction in data.body){
							tr +=	"<tr class='myTr'>"+ 	
									"<td style='padding-left:40px'>"+ ++i+"</td>"+
									"<td><a href="+data.body[mytransaction].trurl+">"+data.body[mytransaction].trname+"</a></td>"+
			  						"<td>&nbsp;</td>"+
			  						
			  					"</tr>";
						}
						$(el).after(tr);
					}),function(error){
						alert(error);
	  				}
			}
  		}
});