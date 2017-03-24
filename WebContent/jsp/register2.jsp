<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>新用户注册</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" language="javascript" src="js/login.js"></script>

	<style type="text/css">
	.panel-default{border-color:#fff}
	div#div1{ position:fixed; top:0; left:0; bottom:0; right:0; z-index:-1; } 
	div#div1 > img { height:100%; width:100%; border:0; } 
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
			style="white-space: nowrap; margin-top: 5%; background: #fff; opacity: 0.9; z-index: 0;">
			<div class="panel-body" style="z-index: 1;">
				<%-- <form class="form-horizontal" action="${pageContext.request.contextPath }/user_login.action" method="post"> --%>
				<form class="form-horizontal" method="post">
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<font color="red" id="message"><%-- ${error } --%></font>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="user.username" id="username" maxlength="10" onblur="VerifyUsername(this.value)" placeholder="用户名" maxlength="20">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" name="user.password" id="password" maxlength="20" placeholder="密码" maxlength="20">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="rePassword" onblur="VerifyPassword()" placeholder="确认密码" maxlength="20">
						</div>
					</div>
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">真实姓名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="user.real_name" id="real_name"  maxlength="10" placeholder="真实姓名" maxlength="10">
						</div>
					</div> -->
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">所属部门</label>
						<div class="col-sm-10">
							<select class="form-control" name="user.department" id="department">
								<option value="">请选择</option>
								<option value="部门A">部门A</option>
								<option value="部门B">部门B</option>
								<option value="部门C">部门C</option>
								<option value="部门D">部门D</option>
							</select>
						</div>
					</div> -->
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">员工类型</label>
						<div class="col-sm-10">
							<select class="form-control" name="user.employee_type" id="employee_type">
								<option value="">请选择</option>
								<option value="TJSB">铁路技术部</option>
								<option value="TJSBZG">铁路技术部主管</option>
								<option value="TAHB">铁路安环部</option>
								<option value="TYSB">铁路运输部</option>
								<option value="TJSFZ">铁路技术副总</option>
								<option value="TSCFZ">铁路生产副总</option>
								<option value="TYLFZ">铁路预留副总</option>
								<option value="JTJSB">集团技术部</option>
								<option value="JTAHB">集团安环部</option>
								<option value="JTYL">集团预留部门</option>
								<option value="JTZD">集团总调</option>
								<option value="SGDW">施工单位</option>
								<option value="XHY">车站值班员</option>
								<option value="JXY">检修员</option>
								<option value="SYQX">所有权限</option>
							</select>
						</div>
					</div> -->
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label">联系电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="user.telephone" id="telephone"  maxlength="11" placeholder="联系电话">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">邮箱</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="user.email" id="email" onblur="VerifyEmail()" maxlength="25" placeholder="邮箱">
						</div>
					</div> -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-5 col-xs-6">
							<button type="submit" class="btn btn-primary col-sm-12 col-xs-12" onclick="saveRegister()">保存</button>
						</div>
						<div class="col-sm-5 col-xs-6">
							<button type="button" class="btn btn-primary col-sm-12 col-xs-12" onclick="log()">登录</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</body>

</html>