<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布图书信息</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" language="javascript"
	src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/upload.js"></script>
<link rel="stylesheet" type="text/css" href="css/publish.css">

</head>
<body>
	<form id="uploadForm" class="form-horizontal" method="post"
		enctype="multipart/form-data">
		<div class="form-group">
			<label for="bookTitle" class="col-md-3 col-sm-3 control-label"><span
				class="spanStyle">*</span>图书标题：</label>
			<div class="col-md-8 col-sm-8">
				<input type="text" class="form-control" id="bookTitle"
					name="book.bookTitle" placeholder="图书标题" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="bookAuthor" class="col-md-3 col-sm-3 control-label"><span
				class="spanStyle">*</span>作者：</label>
			<div class="col-md-8 col-sm-8">
				<input type="text" class="form-control" id="bookAuthor"
					name="book.bookAuthor" placeholder="作者" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="publishTime" class="col-md-3 col-sm-3 control-label"><span
				class="spanStyle">*</span>出版日期：</label>
			<div class="col-md-8 col-sm-8">
				<input type="text" class="form-control" id="publishTime"
					name="book.publishTime" onfocus="WdatePicker({maxDate:new Date()})"
					required="required" />
			</div>
		</div>
		<div class="form-group">
			<label for="isbnNum" class="col-md-3 col-sm-3 control-label"><span
				class="spanStyle">*</span>ISBN号：</label>
			<div class="col-md-8 col-sm-8">
				<input type="text" class="form-control" id="isbnNum"
					name="book.isbnNum" placeholder="ISBN号" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="bookContent" class="col-md-3 col-sm-3 control-label"><span
				class="spanStyle">*</span>图书简介：</label>
			<div class="col-md-8 col-sm-8">
				<textarea class="form-control" rows="6" cols="" id="bookContent"
					name="book.bookContent" style="resize: none;"
					placeholder="图书简介......" required="required"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="bookPhotoAddr" class="col-md-3 col-sm-3 control-label"><span
				class="spanStyle">*</span>图书封面：</label>
			<div class="col-md-8 col-sm-8">
				<input type="file" class="form-control" id="bookPhotoAddr"
					name="file" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="bookAttachmentAddr"
				class="col-md-3 col-sm-3 control-label"><span
				class="spanStyle">*</span>上传文件：</label>
			<div class="col-md-8 col-sm-8">
				<input type="file" class="form-control" id="bookAttachmentAddr"
					name="file1" required="required">
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">
				<input id="publishBookBtn"
					class="btn btn-primary col-md-12 col-sm-12" type="button"
					value="提交">
			</div>
		</div>
	</form>
</body>
</html>