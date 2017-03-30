<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布图书信息</title>
<script type="text/javascript" language="javascript"
	src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/newBook.js"></script>
<link rel="stylesheet" type="text/css" href="css/newArticle.css">

</head>
<body>

	<div class="panel panel-info col-md-10 col-md-offset-1">
		<div class="panel-heading">新增图书 
		</div>
		<div class="panel-body">
			<form id="uploadForm" class="form-horizontal" enctype="multipart/form-data">
				<div class="form-group">
					<label for="bookTitle" class="col-md-3 col-sm-3 control-label">
						<span class="spanStyle">*</span>图书标题：</label>
					<div class="col-md-8 col-sm-8">
						<input type="text" class="form-control" id="bookTitle" 
						name="book.bookTitle" placeholder="图书标题">
					</div>
				</div>
				<div class="form-group">
					<label for="bookAuthor" class="col-md-3 col-sm-3 control-label"><span
						class="spanStyle">*</span>作者：</label>
					<div class="col-md-3 col-sm-3">
						<input type="text" class="form-control" id="bookAuthor"
							name="book.bookAuthor" placeholder="作者">
					</div>
					
					<label for="publishTime" class="col-md-2 col-sm-2 control-label"><span
						class="spanStyle">*</span>出版日期：</label>
					<div class="col-md-3 col-sm-3">
						<input type="text" class="form-control" id="publishTime" name="book.publishTime"
						placeholder="出版日期" onfocus="WdatePicker({maxDate:new Date()})" readonly>
					</div>
				</div>
				
				<div class="form-group">
					<label for="isbnNum" class="col-md-3 col-sm-3 control-label"><span
						class="spanStyle">*</span>ISBN号：</label>
					<div class="col-md-8 col-sm-8">
						<input type="text" class="form-control" id="isbnNum" name="book.isbnNum" placeholder="ISBN号">
					</div>
				</div>
				<div class="form-group">
					<label for="bookContent" class="col-md-3 col-sm-3 control-label"><span
						class="spanStyle">*</span>图书简介：</label>
					<div class="col-md-8 col-sm-8">
						<textarea class="form-control" rows="6" cols="" id="bookContent"
							name="book.bookContent" style="resize: none;" placeholder="图书简介......" ></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="bookPhotoAddr" class="col-md-3 col-sm-3 control-label"><span
						class="spanStyle">*</span>图书封面：</label>
					<div class="col-md-8 col-sm-8">
						<input type="file" id="bookPhotoAddr" name="file">
					</div>
				</div>
				<div class="form-group">
					<label for="bookAttachmentAddr"
						class="col-md-3 col-sm-3 control-label"><span
						class="spanStyle">*</span>上传文件：</label>
					<div class="col-md-8 col-sm-8">
						<input type="file" id="bookAttachmentAddr" name="file1">
					</div>
				</div>
				<button id="publishBookBtn" class="btn btn-primary col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">提交</button>
			</form>
		</div>
	</div>
</body>
</html>