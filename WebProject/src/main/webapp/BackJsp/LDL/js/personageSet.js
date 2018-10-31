/**
 * 
 */
$(function(){
	personageSet.getOneUserDetails($("#uidInput").val());
});


var personageSet = new Vue({
	el:"#personageSet",
	data:{
		userDetail:""
	},
	methods:{
		getOneUserDetails:function(uid){
			var url = "Users/getOneUserDetails";
			this.$http.post(url,{
				uid:uid
			},{emulateJSON: true}).then(function(data) {
				this.userDetail = data.body;
			}, function() {
				
			})
		}
		
	}
	
});
  var page = new Vue({
    el :'#myPost',
	data:{
	  posts:null,
	  pageInfo:null,
	  deptId:null
	},
	methods:{
	    execute:function(PageNumber){
	         var url = 'post/getAllpost';
             this.$http.post(url,{pageNum:PageNumber,deptId:this.deptId},{emulateJSON:true}).then(function(res){
                this.posts=res.body.list
                this.pageInfo=res.body
             });
        },
        delOnePost:function(pid){
			var url = 'post/delOnePost';
			this.$http.post(url,{pid:pid},{emulateJSON:true}).then(function(res){
				this.execute(1);
			});
        },
        postUpdate:function(pid){
        	 this.$router.push({
    		    path:'postUpdate.jsp',
    		    query:{
    		    	pid:1
    		    }
        	})
        }
    }
})
//修改口令失去焦点
function userUpass1(obj){
	  	var val = $(obj).val();
		$(obj).next("span").remove();
		var upass = $("#upassInput").val();
		var span = "";
		if(val == ""){
			span = "<span style='color:red;'>不能为空</span>"
			$(obj).after(span);
			return false;
		}else if(val.length < 5){
			span = "<span style='color:red;'>不可以小于5位</span>"
			$(obj).after(span);
			return false;
		}else if(val != upass){
			var span = "<span style='color:red;'>口令错误</span>"
			$(obj).after(span);
			return false;
		}else{
			span = "<span style='color:red;'><img src='../assets/images/通过.png' width='15'></span>"
			$(obj).after(span);
			return true;
		}
  };
function userUpass2(obj){
	  	var val = $(obj).val();
		$(obj).next("span").remove();
		var span = "";
		if(val == ""){
			span = "<span style='color:red;'>不能为空</span>"
			$(obj).after(span);
			return false;
		}else if(val.length < 5){
			span = "<span style='color:red;'>不可以小于5位</span>"
			$(obj).after(span);
			return false;
		}else{
			span = "<span style='color:red;'><img src='../assets/images/通过.png' width='15'></span>"
			$(obj).after(span);
			return true;
		}
};
function userUpass3(obj){
	var val = $(obj).val();
	$(obj).next("span").remove();
	var upass = $("#userup").val();
	var span = "";
	if(val == ""){
		span = "<span style='color:red;'>不能为空</span>"
		$(obj).after(span);
		return false;
	}else if(val.length < 5){
		span = "<span style='color:red;'>不可以小于5位</span>"
		$(obj).after(span);
		return false;
	}else if(val != upass){
		span = "<span style='color:red;'>两次输入不一致</span>"
		$(obj).after(span);
		return false;
	}else{
		span = "<span style='color:red;'><img src='../assets/images/通过.png' width='15'></span>"
		$(obj).after(span);
		return true;
	}
};
function formSub(){
	var uid = $("#uidInput").val();
	var upass =$("#userup2").val();
	$.ajax({
		url:"Users/updatePass",
		type:"post",
		data:{uid:uid,upass:upass},
		success:function(data){
			alert(data);
		}
		}
	)
};
//更换头像
$('#uploadSubmit').click(function() {
	var data = new FormData($('#uploadForm')[0]);
	$.ajax({
		url : 'userdetail/insertVisitonemodile',
		type : 'POST',
		data : data,
		async : false,
		cache : false,
		contentType : false,
		processData : false,
		success : function(data) {
			location.reload();
			location.reload();
			location.reload();
			location.reload();
		},
		error : function(data) {
			console.log(data.status);
		}
	});
});
