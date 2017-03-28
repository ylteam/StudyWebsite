<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书信息修改</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script  type="text/javascript" language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" type="text/css" href="css/publish.css">
<script type="text/javascript" src="js/revise.js"></script>
<link href="css/style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<form id="uploadForm" class="form-horizontal" method="post" enctype="multipart/form-data">
		<input type="hidden" class="form-control" id="bookId" name="book.bookId" value="${book.bookId}">
		<div class="form-group">
			<label for="bookTitle" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>图书标题：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input type="text" class="form-control" id="bookTitle" name="book.bookTitle" value="${book.bookTitle}" required="required">
		    </div>
		</div>
		<div class="form-group">
			<label for="bookAuthor" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>作者：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input type="text" class="form-control" id="bookAuthor" name="book.bookAuthor" value="${book.bookAuthor}" required="required">
		    </div>
		</div>
		<div class="form-group">
			<label for="publishTime" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>出版日期：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input type="text" class="form-control" id="publishTime" name="book.publishTime" onfocus="WdatePicker({maxDate:new Date()})" value="${book.publishTime}" required="required"/>
		    </div>
		</div>
		<div class="form-group">
			<label for="isbnNum" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>ISBN号：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input type="text" class="form-control" id="isbnNum" name="book.isbnNum" value="${book.isbnNum}" required="required">
		    </div>
		</div>
		<div class="form-group">
			<label for="bookContent" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>图书简介：</label>
		    <div class="col-md-8 col-sm-8">
		    	<textarea class="form-control" rows="6" cols="" id="bookContent" name="book.bookContent" style="resize: none;" required="required">${book.bookContent}</textarea>
		    </div>
		</div>
		<div class="form-group">
		    <div class="col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">
		    	<input id="reviseBookBtn" class="btn btn-primary col-md-12 col-sm-12" type="button" value="提交">
		    </div>
	  </div>
	</form>
</body>
</html>