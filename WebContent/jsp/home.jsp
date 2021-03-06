<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>

		<ul id="myTabs" class="nav nav-pills nav-justified">
			<li id="articleTab" role="presentation" class="active"><a href="#articlelist">我要看文章</a></li>
			<li id="bookTab" role="presentation"><a href="#booklist">我要看书</a></li>
		</ul>

		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="articlelist">
				<jsp:include page="articlelist.jsp"></jsp:include>
			</div>
			<div role="tabpanel" class="tab-pane" id="booklist">
				<jsp:include page="booklist.jsp"></jsp:include>
			</div>
		</div>


	</div>
</body>
</html>