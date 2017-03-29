<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/changePassword.js"></script>
<link href="css/style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<form class="form-horizontal" method="post"">
		<div class="form-group">
			<label id="errormsg" class="col-md-offset-3 col-md-3 col-sm-offset-3 col-sm-3 control-label"></label>
		</div>
		<div class="form-group">
			<label for="articleTitle" class="col-md-3 col-sm-3 control-label">当前密码：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input id="curPassword" type="password" class="form-control" placeholder="当前密码" oninput="clearErrorMsg()" maxlength="20"/>
		    </div>
		</div>
		<div class="form-group">
			<label for="articleAuthor" class="col-md-3 col-sm-3 control-label">新密码：</label>
		    <div class="col-md-8 col-sm-8">
		    	 <input id="newPassword" type="password" class="form-control" placeholder="新密码" oninput="clearErrorMsg()" maxlength="20"/>
		    </div>
		</div>
		<div class="form-group">
			<label for="publishTime" class="col-md-3 col-sm-3 control-label">确认新密码：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input id="confirmNewPassword" type="password" class="form-control" placeholder="确认新密码" oninput="clearErrorMsg()" maxlength="20"/>
		    </div>
		</div>
		<div class="form-group">
		    <div class="col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">
		    	<input id="changePwdBtn" class="btn btn-primary col-md-12 col-sm-12" type="button" value="修改密码">
		    </div>
	  </div>
	</form>
</body>
</html>