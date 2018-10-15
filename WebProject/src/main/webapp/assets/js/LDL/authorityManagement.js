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