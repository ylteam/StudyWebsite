<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布文章信息</title>
<script type="text/javascript" language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="editor/ckeditor.js"></script>
<script type="text/javascript" src="js/newArticle.js"></script>
<link rel="stylesheet" type="text/css" href="css/newArticle.css">

</head>
<body>
	<div class="panel panel-info col-md-10 col-md-offset-1">
		<div class="panel-heading">新增文章</div>
		<div class="panel-body">
			<form class="form-horizontal">
				<div class="form-group">
					<div class="col-md-10 col-md-offset-1">
						<input type="text" class="form-control nainput" id="articleTitle" placeholder="文章标题">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-4 col-md-offset-1">
						<input type="text" class="form-control nainput" id="articleAuthor"
							name="resource.articleAuthor" placeholder="作者">
					</div>
					
					<div class="col-md-4 col-md-offset-2">
						<input type="text" class="form-control nainput" id="publishTime"
							placeholder="发表日期" onfocus="WdatePicker({maxDate:new Date()})" readonly>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
						<textarea name="editor01" id="articleEditor"></textarea>
        				<script type="text/javascript">CKEDITOR.replace('editor01');</script>
					</div>
				</div>
			</form>
			<button id="publishArticleBtn" class="btn btn-primary col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">提交</button>
		</div>
	</div>
</body>
</html>