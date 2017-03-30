$(function(){
	var emailPattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	
	//点击登录按钮清空错误提示
	$("#loginButton").click(function(){
		$("#errorMsg").css("display", "none");
	});
	
	//登录
	$("#login").click(function(){
		var username = $("#username").val();
		var password = $("#password").val();
		var noProblem = true;
		
        if (username == "" || password == "") {
            $("#errorMsg").html("请将用户名和密码填写完整！").css("display", "block");
            noProblem = false;
        }
        
        if(noProblem){
        	$.post("user_login.action", {"user.username": username,"user.password":password}, function (result) {
        		var obj = eval("("+result+")");
        		
    			if(obj.isSuccess){
    				window.location.href = "/StudyWebsite"
    			}else{
    				$("#errorMsg").html(obj.msg).css("display","block");
    			}
    		})
        }
	});
	
	//搜索,JQuery 给元素绑定click事件多次执行的解决方法$("#headSearchBtn").unbind("click").click(function(){
	$("#headSearchBtn").click(function(){
		var searchContent = $("#searchContent").val();
		if(searchContent != ""){
			$("#searchBtn").attr("href","resource_headSearch.action?searchContent="+searchContent);
		}else{
			alert("请输入查询内容");
		}
	});
	
})
