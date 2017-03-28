<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章信息修改</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script  type="text/javascript" language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" type="text/css" href="css/publish.css">
<script type="text/javascript" src="js/revise.js"></script>
<link href="css/style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<form class="form-horizontal" method="post"">
		<input type="hidden" class="form-control" id="resourceId" name="resource.resourceId" value="${resource.resourceId}">
		<div class="form-group">
			<label for="articleTitle" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>文章标题：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input type="text" class="form-control" id="articleTitle" name="resource.articleTitle" value="${resource.articleTitle}" required="required">
		    </div>
		</div>
		<div class="form-group">
			<label for="articleAuthor" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>作者：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input type="text" class="form-control" id="articleAuthor" name="resource.articleAuthor" value="${resource.articleAuthor}" required="required">
		    </div>
		</div>
		<div class="form-group">
			<label for="publishTime" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>出版日期：</label>
		    <div class="col-md-8 col-sm-8">
		    	<input type="text" class="form-control" id="publishTime" name="resource.publishTime" onfocus="WdatePicker({maxDate:new Date()})" value="${resource.publishTime}" required="required"/>
		    </div>
		</div>
		<div class="form-group">
			<label for="articleContent" class="col-md-3 col-sm-3 control-label"><span class="spanStyle">*</span>图书简介：</label>
		    <div class="col-md-8 col-sm-8">
		    	<textarea class="form-control" rows="6" cols="" id="articleContent" name="resource.articleContent" style="resize: none;" required="required">${resource.articleContent}</textarea>
		    </div>
		</div>
		<div class="form-group">
		    <div class="col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4">
		    	<input id="reviseResourceBtn" class="btn btn-primary col-md-12 col-sm-12" type="button" value="提交">
		    </div>
	  </div>
	</form>
</body>
</html>