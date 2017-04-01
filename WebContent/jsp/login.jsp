<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>欢迎登录</title>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" language="javascript" src="js/login.js"></script>
	
	<style type="text/css">
	.panel-default{border-color:#fff}
	div#div1{ position:fixed; top:0; left:0; bottom:0; right:0; z-index:-1; } 
	div#div1 > img { height:100%; width:100%; border:0; } 
	</style>
	</style>
	<script type="text/javascript">
	var msg="${requestScope.error}";
	if(msg!=""){
	alert(msg);
	}
	</script>
</head>
<body>
	<div id="div1">
		<img src="img/2.jpg" />
	</div>
	<div class="col-md-12">
		<div
			class="panel panel-default col-md-4 col-md-offset-4 col-xs-6 col-xs-offset-3"
			style="white-space: nowrap; margin-top: 10%; background: #fff; opacity: 0.8; z-index: 0;">
			<div class="panel-body" style="z-index: 1;">
				<%-- <form class="form-horizontal" action="${pageContext.request.contextPath }/user_login.action" method="post"> --%>
				<form class="form-horizontal" method="post">
					<%-- <div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<font color="red">${error }</font>
						</div>
					</div> --%>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<%-- <input type="text" class="form-control" name="user.username" id="username" value="${user.username}" placeholder="用户名" maxlength="20"> --%>
							<input type="text" class="form-control" name="user.username" id="username" placeholder="用户名" maxlength="20">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
						<div class="col-sm-10">
							<%-- <input type="password" class="form-control" name="user.password" id="password" value="${user.password}" placeholder="密码" maxlength="20"> --%>
							<input type="password" class="form-control" name="user.password" id="password" placeholder="密码" maxlength="16">
						</div>
					</div>
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">验证码</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="kaptcha" id="kaptcha" onblur="Verify(this.value)" placeholder="验证码">
						</div>
						<div class="col-sm-5">
							<img src="Kaptcha.jpg" id="kaptchaImage" height="27px" onclick="changeVerifyCode(this)" style="cursor:pointer;" alt="没有显示请点击" title="看不清，换一张">
                		</div>
					</div> -->
					<!-- 
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox">记住密码
								</label>
							</div>
						</div>
					</div>
					 -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-5 col-xs-6">
							<button type="submit" class="btn btn-primary col-sm-12 col-xs-12" onclick="login()">登录</button>
						</div>
						<div class="col-sm-5 col-xs-6">
							<button type="button" class="btn btn-primary col-sm-12 col-xs-12" onclick="register()">注册</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</body>
</html>