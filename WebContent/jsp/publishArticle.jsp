<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布文章信息</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script  type="text/javascript" language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/publish.js"></script>
<link rel="stylesheet" type="text/css" href="css/publish.css">

</head>
<body>
	<form class="form-horizontal">
		<div class="form-group">
			<label for="articleTitle" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>文章标题：</label>
		    <div class="col-md-9 col-sm-9">
		    	<input type="text" class="form-control" id="articleTitle" name="resource.articleTitle" placeholder="文章标题" required="required">
		    </div>
		</div>
		<div class="form-group">
			<label for="articleAuthor" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>作者：</label>
		    <div class="col-md-9 col-sm-9">
		    	<input type="text" class="form-control" id="articleAuthor" name="resource.articleAuthor" placeholder="作者" required="required">
		    </div>
		</div>
		<div class="form-group">
			<label for="publishTime" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>发表日期：</label>
		    <div class="col-md-9 col-sm-9">
		    	<input type="text" class="form-control" id="publishTime" name="resource.publishTime" placeholder="发表日期" onfocus="WdatePicker({maxDate:new Date()})" required="required"/>
		    </div>
		</div>
		<div class="form-group">
			<label for="articleContent" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>文章内容：</label>
		    <div class="col-md-9 col-sm-9">
		    	<textarea class="form-control" rows="6" cols="" id="articleContent" name="resource.articleContent" style="resize: none;" placeholder="文章内容......" required="required"></textarea>
		    </div>
		</div>
		<div class="form-group">
	    <div class="col-md-offset-5 col-md-2 col-sm-offset-5 col-sm-2">
	    	<input class="btn btn-primary" type="button" value="提交">
	    </div>
	  </div>
	</form>
</body>
</html>