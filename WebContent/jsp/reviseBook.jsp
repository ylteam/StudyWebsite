<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书信息修改</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/revise.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/revise.js"></script>

</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>
		<div class="panel panel-info">
			<div class="panel-heading">修改文章信息</div>
			<div class="panel-body">
				<form id="uploadForm" class="form-horizontal" enctype="multipart/form-data">
					<input type="hidden" class="form-control" id="bookId" name="book.bookId" value="${book.bookId}">
					<div class="form-group">
						<label for="bookTitle" class="col-md-2 control-label"><span
							class="spanStyle">*</span>图书标题：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" id="bookTitle" name="book.bookTitle" value="${book.bookTitle}">
						</div>
					</div>
					<div class="form-group">
						<label for="bookAuthor" class="col-md-2 control-label"><span
							class="spanStyle">*</span>作者：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" id="bookAuthor" name="book.bookAuthor" value="${book.bookAuthor}">
						</div>
					</div>
					<div class="form-group">
						<label for="publishTime" class="col-md-2 control-label"><span
							class="spanStyle">*</span>出版日期：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" id="publishTime" name="book.publishTime"
								onfocus="WdatePicker({maxDate:new Date()})" value="${book.publishTime}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="isbnNum" class="col-md-2 control-label"><span
							class="spanStyle">*</span>ISBN号：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" id="isbnNum"
								name="book.isbnNum" value="${book.isbnNum}">
						</div>
					</div>
					<div class="form-group">
						<label for="bookContent" class="col-md-2 control-label"><span
							class="spanStyle">*</span>图书简介：</label>
						<div class="col-md-9">
							<textarea class="form-control" rows="6"  id="bookContent"
								name="book.bookContent" style="resize: none;">${book.bookContent}</textarea>
						</div>
					</div>
							
				</form>
				<button id="reviseBookBtn" class="btn btn-primary col-md-offset-4 col-md-4">确认修改</button>
			</div>
		</div>
	</div>
</body>
</html>