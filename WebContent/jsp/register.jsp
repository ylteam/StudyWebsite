<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type='text/javascript' src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>注册</title>
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>
		<div class="col-md-5 col-md-offset-3">
			<h2>
				新用户？ <span> 创建一个账户 </span>
			</h2>

			<div class="registration_form">
				<div id="registration_form">
					<input type="hidden" id="user-role" value="1">
					<div>
						<label> <input placeholder="姓名：" type="text" tabindex="1"
							id="user-name" required autofocus>
						</label>
					</div>
					<div>
						<label> <input placeholder="邮箱地址：" type="email"
							tabindex="3" id="user-email" required>
						</label>
					</div>
					<div>
						<label> <input placeholder="密码：" type="password"
							id="user-password" tabindex="4" required>
						</label>
					</div>
					<div>
						<label> <input placeholder="确认密码：" type="password"
							id="con-password" tabindex="4" required>
						</label>
					</div>
					<div>
						<input type="submit" value="注册" id="register-submit">
					</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>
</body>
</html>