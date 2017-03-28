<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书阅读</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bookdetail.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bookdetail.css">
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>
		<input type="hidden" id="bookId-detail" value="${book.bookId }">
		<div class="panel panel panel-info">
			<div class="panel-heading">书籍详情</div>
			<div class="panel-body">
				<div class="grid images_3_of_2">
					<img src="img/covers/${book.bookPhotoAddr}" />
				</div>
				<div class="desc1 span_3_of_2">

					<h3>${book.bookTitle}</h3>
					<br /> <span class="code">著者/译者：</span>${book.bookAuthor}<br /> <br />
					<span class="code">ISBN：</span>${book.isbnNum}<br /> <br /> <span
						class="code">出版日期：</span>${book.publishTime}<br /> <br /> <span
						class="code">阅读量：</span>${book.browseNum}<br /> <br />
					<div class="btn btn-default">
						<a id="addToCart-btn"> <label class="glyphicon glyphicon-book"></label>&nbsp;点此阅读或下载</a>
					</div>
				</div>
			</div>
		</div>

		<div class="panel panel panel-info">
			<div class="panel-heading">内容简介</div>
			<div class="panel-body">${book.bookContent}</div>
		</div>

		<div class="input-group">
			<input id="commentText" type="text" class="form-control"
				placeholder="我也说两句"> <span class="input-group-btn">
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