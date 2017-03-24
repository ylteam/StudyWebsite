$(function(){
	var emailPattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	
	//点击登录按钮清空错误提示
	$("#loginButton").click(function(){
		$("#errorMsg").css("display", "none");
	})
	
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
})
