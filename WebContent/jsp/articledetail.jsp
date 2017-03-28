<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章阅读</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/articledetail.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/articledetail.css">
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>
		<input type="hidden" id="resourceId-detail" value="${article.resourceId }">
		<div class="panel panel-info">
			<div class="panel-heading articleInfo">
				<span class="articleTitle">${article.articleTitle}</span><br>
				<span>作者:${article.articleAuthor}&nbsp; 更新时间:${article.submitTime}&nbsp;阅读量:${article.browseNum }</span>
			</div>
			<div class="panel-body">
				
			<span class="articleContent">${article.articleContent}</span>
			</div>
		</div>
		
		<div class="input-group">
			<input id="commentText" type="text" class="form-control" placeholder="我也说两句"> 
			<span class="input-group-btn">
				<button id="sendCommentBtn" class="btn btn-default" type="button">发表评论</button>
			</span>
		</div>
		
		<div class="panel panel panel-info">
			<div class="panel-heading" id="commentPanelHead"></div>
			<ul class="list-group" id="commentList">
				<!-- js添加 -->
			</ul>
		</div>
	</div>
</body>
</html>