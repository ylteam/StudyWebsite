function trim(str){   
    str = str.replace(/^(\s|\u00A0)+/,'');   
    for(var i=str.length-1; i>=0; i--){   
        if(/\S/.test(str.charAt(i))){   
            str = str.substring(0, i+1);   
            break;   
        }   
    }   
    return str;   
}

/*function changeVerifyCode(){
	$("#kaptchaImage").attr("src","Kaptcha.jpg?"+ Math.floor(Math.random()*100) );
}
     
function Verify(val){
    kap=document.getElementById("kaptcha").value;
    var xmlhttp;
    if(window.XMLHttpRequest){
    	xmlhttp=new XMLHttpRequest();
    }else{
    	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); 
    }
    var verifyUrl = "/Equipment/VerifyServlet.servlet";
   	$.ajax({
   		type:"POST",
   	    cache:"false",  
   	    url:verifyUrl,
   	    data:"verifyCode="+kap,
   	    success:function(returnData){
   	    	if(returnData!="Y") {
   	    		//alert("验证码错误！");
   	    		$("#kaptcha").val("");
   	            //$("#kaptcha").attr("value","");//错的
   	            return false;
   	        }else{
//   	                      验证码正确，进行提交操作
//   	        alert("验证码输入正确，可以提交表单");
//   	        $("#login").attr("disabled",false);
  	        }
   	    },
   	    error:function(e){  
   	    	alert(e);
   	    }
   	});            	
}*/
     
//登录页面--登录按钮 
function login(){
    /*usname=document.getElementById("username").value;
    uspswd=document.getElementById("password").value;
    kap=document.getElementById("kaptcha").value;*/
    if(""==$("#username").val()){
    	alert("用户名不能为空！");
    	return false;
    }else if(""==$("#password").val()){
        alert("密码不能为空！");
        return false;
    }else{
	    myform=document.forms[0];
	    myform.action="user_login.action";
	    myform.submit();
    }
}
     
//登录页面--注册按钮
function register(){
    myform=document.forms[0];
    myform.action="jsp/register.jsp";
    myform.submit();
}


//注册页面--验证密码是否一致
function VerifyPassword(){
	if($("#password").val() != $("#rePassword").val()){
		//$("#verifypw").show();
		$("#message").html("密码不一致，请重新输入！");
		$("#rePassword").val("");
	}
	/*if($("#password").val() == $("#rePassword").val()){
		//$("#verifypw").hide();
	}*/
}
//注册页面--验证邮箱
/*function VerifyEmail(){
	//var regExp=/^[a-zA-Z]+[a-zA-Z0-9_]*(@163.com)$/;
	var regExp=/^[0-9]+[a-zA-Z0-9_]*(@qq.com)$/;
	if(!regExp.test($("#email").val())){
        //$("#verifyemail").show();
		$("#message").html("邮箱格式不正确，请重新输入！");
		$("#email").val("");
    }
	if(regExp.test(email.value)){
        //$("#verifyemail").hide();
    }
}*/
//注册页面--异步检测用户名是否已存在
function VerifyUsername(val){
    username = $("#username").val();
   	$.ajax({
   		type: "POST",
   	    cache: "false",  
   	    url: "user_verifyUsername.action",
   	    data: "username="+username,
   	    success:function(returnData){
   	    	if(returnData!="Y") {
   	    		//alert("用户名已存在！");
   	    		$("#message").html("用户名已存在！");
   	            $("#username").val("");
   	        }else{
   	        	$("#message").html("");
   	        }
   	    },
   	    error:function(e){
   	    	$("#message").html("请填写用户名！");
   	    	//alert("请填写用户名！");
   	    }
   	});            	
}

//注册页面--保存
function saveRegister(){
    /*if(""==$("#department").val()){
		alert("请填写所属部门！");
		 return false;
	}
	if(""==$("#employee_type").val()){
		alert("请填写员工类型！");
		 return false;
	}*/
	var list = document.getElementsByTagName("input");
	for(var i=0;i<3;i++)
	{
		if(list[i].value==""){
		   alert("请将信息填写完整！");
		   return false;
		}
	}
	if(confirm("是否确认提交？")){
		myform=document.forms[0];
        myform.action="user_register.action";
        myform.submit();
	}
}
//注册页面--登录按钮 
function log(){
    myform=document.forms[0];
    myform.action="jsp/login.jsp";
    myform.submit();
}