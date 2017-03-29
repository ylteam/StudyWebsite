$(function(){
	//修改密码
	$("#changePwdBtn").click(function(){
		var curPassword = $("#curPassword").val();
		var newPassword = $("#newPassword").val();
		var confirmNewPassword = $("#confirmNewPassword").val();
		if(curPassword=="" || newPassword=="" || confirmNewPassword==""){
			$("#errormsg").css("display","block").css("color","red").html("请将信息补充完整");
			return false;
		}
		if(newPassword != confirmNewPassword){
			$("#errormsg").css("display","block").css("color","red").text("两次密码不一致");
			return false;
		}
		$.ajax({
	        type: "POST",
	        async : true,
	        url: "user_repassword.action",
	        data: {
	        	"curPassword" : curPassword,
	        	"newPassword" : newPassword,
	        },
	        success: function (data) {
	        	var obj = eval("("+data+")");
	        	alert(obj.msg);
	        },
	        error: function (data) {
	        	var obj = eval("("+data+")");
	        	$("#errormsg").css("display","block").css("color","red").text(obj.msg);
	        }
	    });
	});
	
})

function clearErrorMsg(){
    $("#errormsg").css("display","none");
}
