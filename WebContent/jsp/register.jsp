<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type='text/javascript' src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/register.css">
<title>注册</title>
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>

		<div class="panel panel-info col-md-6 col-md-offset-3">
			<div class="panel-heading">
				<h2 class="panel-title">新用户？ <span> 创建一个账户 </span></h2>
			</div>
			<div class="panel-body">
				<div class="registration_form">
				<div id="registration_form">
					<div>
						<label> <input maxlength="20" placeholder="用户名(必填)：" class="form-control" tabindex="1"
							id="user-name"  autofocus>
						</label>
					</div>
					<span class="errorMsg" id="usernameError"></span>
					<div>
						<label> <input maxlength="30" placeholder="邮箱：" class="form-control" tabindex="2"
							id="user-email" >
						</label>
					</div>
					<span class="errorMsg" id="emailError"></span>
					<div>
						<label> <input maxlength="20" placeholder="手机：" type="text" class="form-control" tabindex="3"
							id="user-phone" >
						</label>
					</div>
					<span class="errorMsg" id="phoneError"></span>
					<div>
						<label> <input maxlength="16" placeholder="密码(必填)：" type="password" class="form-control"
							id="user-password" tabindex="4" >
						</label>
					</div>
					<span class="errorMsg" id="pwdError"></span>
					<div>
						<label> <input maxlength="16" placeholder="确认密码(必填)：" type="password" class="form-control"
							id="con-password" tabindex="5" >
						</label>
					</div>
					<span class="errorMsg" id="conpwdError"></span>
					<div>
						<button class="btn btn-info btn-lg" id="register-submit">注册</button>
						&nbsp;&nbsp; <a href="/StudyWebsite">稍后注册？返回主页</a>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>