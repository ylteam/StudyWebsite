<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<script type="text/javascript" src="js/changePassword.js"></script>
</head>
<body>
	<form class="form-horizontal" method="post">
		<br><br>
		<div class="form-group">
			<label id="errormsg" class="col-md-offset-4 col-md-3 col-sm-offset-4 col-sm-3 control-label"></label>
		</div>
		<div class="form-group">
			<label for="curPassword" class="col-md-4 col-sm-4 control-label">当前密码：</label>
		    <div class="col-md-6 col-sm-6">
		    	<input id="curPassword" type="password" class="form-control" placeholder="当前密码" oninput="clearErrorMsg()" maxlength="16"/>
		    </div>
		</div>
		<div class="form-group">
			<label for="newPassword" class="col-md-4 col-sm-4 control-label">新密码：</label>
		    <div class="col-md-6 col-sm-6">
		    	 <input id="newPassword" type="password" class="form-control" placeholder="新密码" oninput="clearErrorMsg()" maxlength="16"/>
		    </div>
		</div>
		<div class="form-group">
			<label for="confirmNewPassword" class="col-md-4 col-sm-4 control-label">确认新密码：</label>
		    <div class="col-md-6 col-sm-6">
		    	<input id="confirmNewPassword" type="password" class="form-control" placeholder="确认新密码" oninput="clearErrorMsg()" maxlength="16"/>
		    </div>
		</div>
		<br>
		<div class="form-group">
		    <div class="col-md-offset-5 col-md-4 col-sm-offset-5 col-sm-4">
		    	<input id="changePwdBtn" class="btn btn-primary col-md-12 col-sm-12" type="button" value="修改密码">
		    </div>
	  </div>
	</form>
</body>
</html>