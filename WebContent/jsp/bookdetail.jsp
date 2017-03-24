<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书阅读</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bookdetail.css">
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>

		<input type="hidden" id="bookId-detail" value="${book.bookId }">
		<div class="women_main">
			<div class="row single">
				<div class="col-md-12 det">
					<div class="single_left">
						<div class="grid images_3_of_2">
							<img src="img/covers/${book.bookPhotoAddr}" />
						</div>
						<div class="desc1 span_3_of_2">

							<h3>${book.bookTitle}</h3>
							<br/> <span class="code">著者/译者：</span>${book.bookAuthor}<br/>
							<br/> <span class="code">ISBN：</span>${book.isbnNum}<br/>
							<br/> <span class="code">出版日期：</span>${book.publishTime}<br/>
							<br/> <span class="code">阅读量：</span>${book.browseNum}<br/>
							<br/>
							<div class="btn_form">
								<a id="addToCart-btn"><label class="glyphicon glyphicon-shopping-cart"></label>&nbsp;加入购物车</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="single-bottom1">
						<h6>书籍详情</h6>
						<p class="prod-desc">${book.bookContent}</p>
					</div>
					<div class="single-bottom2">
						<h6>累计评价</h6>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>