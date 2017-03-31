<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/articlelist.css">
<link rel="stylesheet" type="text/css" href="css/booklist.css">
<script type="text/javascript" src="js/extendPagination.js"></script>
<script type="text/javascript" src="js/headSearch.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="head.jsp"></jsp:include>
		<div
			class="articlelist-container col-md-offset-1 col-md-10 col-xs-offset-1 col-xs-10">
			<div class="articlelist panel panel-info col-md-12">
				<div class="panel-heading" id="articlePanelHeading">文章查询结果</div>
				<div class="table-responsive">
					<table class="table table-striped table-hover articletable">
						<thead>
							<tr>
								<th class="col-md-1">序号</th>
								<th class="col-md-6">标题</th>
								<th class="col-md-3">作者</th>
								<th class="col-md-2">更新时间</th>
							</tr>
						</thead>
						<tbody id="articletablebody">
							<!-- js添加 -->
						</tbody>
					</table>
				</div>
			</div>
			<!--分页按钮-->
			<div id="articleListPager"></div>
		</div>

		<div
			class="booklist-container col-md-offset-1 col-md-10 col-xs-offset-1 col-xs-10">
			<div class="booklist panel panel-danger col-md-12">
				<div class="panel-heading" id="bookPanelHeading">图书查询结果</div>
				<div class="table-responsive">
					<table class="table table-striped table-hover booktable">
						<thead>
							<tr>
								<th class="col-md-1">序号</th>
								<th class="col-md-6">书名</th>
								<th class="col-md-3">作者</th>
								<th class="col-md-2">更新时间</th>
							</tr>
						</thead>
						<tbody id="booktablebody">
							<!-- js添加 -->
						</tbody>
					</table>
				</div>
			</div>
			<!--分页按钮-->
			<div id="booklistPager"></div>
		</div>
	</div>
</body>
</html>