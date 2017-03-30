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
<script type="text/javascript" src="js/managerCenter.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>

		<ul id="managerCenterTabs" class="nav nav-pills nav-justified">
			<li id="articleManageTab" role="presentation" class="active"><a href="#articleManageDiv">文章信息管理</a></li>
			<li id="newArticleTab" role="presentation"><a href="#newArticleDiv">新增文章</a></li>
			<li id="bookManageTab" role="presentation"><a href="#bookManageDiv">图书信息管理</a></li>
			<li id="newBookTab" role="presentation"><a href="#newBookDiv">新增图书</a></li>
		</ul>

		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="articleManageDiv">
				<jsp:include page="articleListManage.jsp"></jsp:include>
			</div>
			<div role="tabpanel" class="tab-pane" id="newArticleDiv">
				<jsp:include page="newArticle.jsp"></jsp:include>
			</div>
			<div role="tabpanel" class="tab-pane" id="bookManageDiv">
				<jsp:include page="bookListManage.jsp"></jsp:include>
			</div>
			<div role="tabpanel" class="tab-pane" id="newBookDiv">
				<jsp:include page="newBook.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>