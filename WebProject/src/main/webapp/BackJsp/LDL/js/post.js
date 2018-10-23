/**
 * 
 */
$(function(){
	ve.getGroupcompanyVue();
	ve.getSubcompanyVue();
	ve.getDeptVue();
	page.execute(1);
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
  		},
  		getDeptPost:function(deptid){
  			page.deptId=deptid;
  			page.execute(1);
  		}
	}
});


/*

var myTbody = new Vue({
		el:"#oneModel",
		data:{
			Visitonemodiles:"",
			Visittwomodiles:""
		}
	});
	var getvo = Vue.http.get(
	  	"/DuthorityManagementController/selectVisitonemodile"
	  ).then(function(data){
		  myTbody.Visitonemodiles=data.body;
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
	  });*/