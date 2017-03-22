$(function(){
		
	//登录
	var emailPattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	$("#login").click(function(){
		var email = $("#email").val();
		var password = $("#password").val();
		var noProblem = true;

        if (email == "" || password == "") {
            $("#errorMsg").html("请将邮箱和密码填写完整！").css("display", "block");
            noProblem = false;
        }else if (!emailPattern.test(email)) {
            $("#errorMsg").html("邮箱格式不正确！").css("display", "block");
            noProblem = false;
        }
        
        if(noProblem){
        	$.post("user_login.action", {"user.email": email,"user.password":password}, function (result) {
    			if(result.isSuccess){
    				window.location.href = "/BookStore"
    			}else{
    				$("#errorMsg").html(result.msg).css("display","block");
    			}
    		})
        }
	});
})
