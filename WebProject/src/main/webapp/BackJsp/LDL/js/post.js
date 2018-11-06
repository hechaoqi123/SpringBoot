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
		deptId:null,
		//权限分配
		trueVisits:"",
		falseVisits:"",
		pid:0,
		mname:""
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
       
        //权限分配
        getVisit:function(pid){
        	this.pid = pid;
			this.$http.post("post/postVisittwomodile",{
					pid:pid,
					mname:this.mname
			},{emulateJSON: true}).then(function(data) {
				this.trueVisits = data.body.postTrueVisittwomodile;
				this.falseVisits = data.body.postFalseVisittwomodile;
				this.mname = null;
			}, function(dataError) {
				
			})
		},
		delpostVisittwomodile:function(mTowId){
			this.$http.post("post/delpostVisittwomodile",{
				pid:this.pid,
				mTowId:mTowId
			},{emulateJSON: true}).then(function(data) {
				this.getVisit(this.pid);
			}, function(error) {
				
			})
			
		},
		insertpostVisittwomodile:function(mTowId){
			this.$http.post("post/insertpostVisittwomodile",{
  				pid:this.pid,
  				mTowId:mTowId
  			},{emulateJSON: true}).then(function(data) {
  				this.getVisit(this.pid);
  			}, function(error) {
  				
  			})
		  	}
	    }
})
 

function insertpostVisittwomodile(id){
	  alert(id);
  }

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


//权限分配

