$(function(){
	
	$("#register-submit").click(function(){
		var usernamePattern = /^[\da-zA-Z]{6,16}$/;
		var emailPattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		var phonePattern = /^1[3|5|7|8|]\d{9}$/; 
		
		var username = $("#user-name").val();
		var email = $("#user-email").val();
		var phone = $("#user-phone").val();
		var pwd = $("#user-password").val();
		var conPwd = $("#con-password").val();
		
		var noProblem = true;
		if(username == ""){
			$("#usernameError").html("用户名不能为空").css("display","block");
			noProblem = false;
		}else if(!usernamePattern.test(username)){
			$("#usernameError").html("用户名需为6到16位数字和字母组合").css("display","block");
			noProblem = false;
		}

		if(email!="" && !emailPattern.test(email)){
			$("#emailError").html("邮箱格式不正确").css("display","block");
			noProblem = false;
		}
		if(phone != "" && !phonePattern.test(phone)){
			$("#phoneError").html("手机号格式不正确").css("display","block");
			noProblem = false;
		}
		
		if(pwd == ""){
			$("#pwdError").html("密码不能为空 ").css("display","block");
			noProblem = false;
		}else if(!usernamePattern.test(pwd)){
			$("#pwdError").html("密码需为6到16位数字和字母组合").css("display","block");
			noProblem = false;
		}else if(conPwd == ""){
			$("#conpwdError").html("请确认密码").css("display","block");
			noProblem = false;
		}
		else if(conPwd != pwd){
			$("#conpwdError").html("两次输入的密码不一致").css("display","block");
			noProblem = false;
		}
		
		
		if(noProblem){
			$.post("user_register.action",{"user.username":username,"user.email":email,"user.phone":phone,"user.password":pwd},function(result){
				var obj = eval("("+result+")");
				if(obj.isSuccess){
					$(".form-control").val("");
					alert("恭喜你注册成功！请点击上方登录按钮登录");
				}
				else{
					$("#usernameError").html("该用户名已存在").css("display","block");
				}
			})
		}
	})
	
	$(".form-control").focus(function(){
		$(".errorMsg").css("display","none");
	})
})