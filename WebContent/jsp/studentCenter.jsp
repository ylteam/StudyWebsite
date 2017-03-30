<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/studentCenter.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>
		<ul id="studentCenterTabs" class="nav nav-pills nav-justified">
			<li id="articleTab" role="presentation" class="active"><a href="#browseRecord">阅读记录</a></li>
			<li id="bookTab" role="presentation"><a href="#changePwd">修改密码</a></li>
		</ul>

		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="browseRecord">
				<jsp:include page="browseRecord.jsp"></jsp:include>
			</div>
			<div role="tabpanel" class="tab-pane" id="changePwd">
				<jsp:include page="changePassword.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>