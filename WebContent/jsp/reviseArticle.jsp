<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章信息修改</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="css/style.css" rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/revise.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="editor/ckeditor.js"></script>
<script type="text/javascript" src="js/revise.js"></script>

</head>
<body>
	<div class='container'>
		<jsp:include page="head.jsp"></jsp:include>
		<div class="panel panel-info">
			<div class="panel-heading">修改文章信息</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<input type="hidden" class="form-control" id="resourceId"
						name="resource.resourceId" value="${resource.resourceId}">
					<div class="form-group">
						<label for="articleTitle" class="col-md-2 control-label"><span
							class="spanStyle">*</span>文章标题：</label>
						<div class="col-md-9">
							<input maxlength="50" type="text" class="form-control" id="articleTitle"
								name="resource.articleTitle" value="${resource.articleTitle}">
						</div>
					</div>
					<div class="form-group">
						<label for="articleAuthor" class="col-md-2 control-label"><span
							class="spanStyle">*</span>作者：</label>
						<div class="col-md-9">
							<input maxlength="20" type="text" class="form-control" id="articleAuthor"
								name="resource.articleAuthor" value="${resource.articleAuthor}">
						</div>
					</div>
					<div class="form-group">
						<label for="publishTime" class="col-md-2 control-label"><span
							class="spanStyle">*</span>出版日期：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" id="publishTime"
								name="resource.publishTime"
								onfocus="WdatePicker({maxDate:new Date()})"
								value="${resource.publishTime}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="articleContent"
							class="col-md-2 control-label"><span
							class="spanStyle">*</span>文章内容：</label>
						<div class="col-md-9">
							<textarea name="editor01" id="articleEditor">${resource.articleContent}</textarea>
        					<script type="text/javascript">CKEDITOR.replace('editor01');</script>
						</div>
					</div>
				</form>
				<button id="reviseResourceBtn" class="btn btn-primary col-md-offset-4 col-md-4">确认修改</button>
			</div>
		</div>
	</div>
</body>
</html>