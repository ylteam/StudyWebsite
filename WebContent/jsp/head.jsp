<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>头部</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />

<script src="js/menu_jquery.js"></script>
<script type="text/javascript" src="js/head.js"></script>
</head>
<body>
	<div class="header">
		<div class="head-t">
			<div class="logo">
				<a href="/StudyWebsite"> <img src="img/logo.png" class="img-responsive" alt="" />
				</a>
			</div>
			<div class="header_right">
				<div class="rgt-bottom">
					<div class="log" ${sessionScope.currentUser==null?'':'hidden'}>
						<div class="login">
							<div id="loginContainer">
								<a href="#" id="loginButton" class=""><span>登录</span></a>
								<div id="loginBox">
									<div id="loginForm">
										<fieldset id="body">
											<fieldset>
												<label for="username">用户名</label> 
													<input id="username">
											</fieldset>
											<fieldset>
												<label for="password">密码</label> 
												<input type="password" id="password">
											</fieldset>
											<input type="submit" class="btn btn-primary" id="login" value="登录">
										</fieldset>
										<span id="errorMsg"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="log" ${sessionScope.currentUser == null?'hidden':''}>
						<a href=""><span>${sessionScope.currentUser.username}</span></a>
					</div>
					<div class="reg" ${sessionScope.currentUser==null?'':'hidden'}>
						<a href="user_toRegister.action">注册</a>
					</div>
					<div class="reg" ${sessionScope.currentUser==null?'hidden':''}>
						<a href="user_logout.action">退出</a>
					</div>

					<div class="clearfix"></div>
				</div>
				<div class="search">
					<form method="post">
						<input id="searchContent" type="text" placeholder="搜索..." value="${searchCont}"> 
						<a id="searchBtn" target="_blank"><input id="headSearchBtn" type="button"></a>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>