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
					<a href="/BookStore"> <img src="img/logo.png"
						class="img-responsive" alt="" />
					</a>
				</div>
				<!-- start header_right -->
				<div class="header_right">
					<div class="rgt-bottom">
						<div class="log" ${sessionScope.user==null?'':'hidden'}>
							<div class="login">
								<div id="loginContainer">
									<a href="#" id="loginButton"><span>登录</span></a>
									<div id="loginBox">
										<div id="loginForm">
											<fieldset id="body">
												<fieldset>
													<label for="email">邮箱</label> <input type="email"
														name="user.email" id="email">
												</fieldset>
												<fieldset>
													<label for="password">密码</label> <input type="password"
														name="user.password" id="password">
												</fieldset>
												<input type="submit" id="login" value="登录"> <label
													for="checkbox"><input type="checkbox" id="checkbox">
													<i>记住密码</i></label>
											</fieldset>
											<span id="errorMsg"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="log" ${sessionScope.user == null?'hidden':''}>
							<a href='user_personal.action'><span>${sessionScope.user.name}</span></a>
						</div>
						<div class="reg" ${sessionScope.user==null?'':'hidden'}>
							<a href="user_toregister.action">注册</a>
						</div>
						<div class="reg" ${sessionScope.user==null?'hidden':''}>
							<a href="user_logout.action">退出</a>
						</div>

						<div class="clearfix"></div>
					</div>
					<div class="search">
						<form>
							<input type="text" value="" placeholder="搜索..."> <input
								type="submit" value="">
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
</body>
</html>