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
var myTbody = new Vue({
				el:'#myTbody',
				data:{
					Visitonemodiles:''
				}
			});

var getvo = Vue.http.get(
	  	"/DuthorityManagementController/selectVisitonemodile"
	  ).then(function(data){
		  myTbody.Visitonemodiles=data.body;
	  },function(error){
	  	alert(1111);
	  });