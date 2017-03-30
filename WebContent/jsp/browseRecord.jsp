<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人浏览记录</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/articlelist.css">
<link rel="stylesheet" type="text/css" href="css/booklist.css">
<script type="text/javascript" src="js/extendPagination.js"></script>
<script type="text/javascript" src="js/browseRecord.js"></script>
</head>
<body>
	<div class="articlelist-container col-md-6 col-xs-6">
		<div class="articlelist panel panel-info col-md-12">
			<div class="panel-heading">浏览文章记录</div>
			<div class="table-responsive">
				<table class="table table-striped table-hover articletable">
					<thead>
						<tr>
							<th class="col-md-2">序号</th>
							<th class="col-md-7">标题</th>
							<th class="col-md-3">浏览次数</th>
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

	<div class="booklist-container col-md-6 col-xs-6">
		<div class="booklist panel panel-danger col-md-12">
			<div class="panel-heading">浏览图书记录</div>
			<div class="table-responsive">
				<table class="table table-striped table-hover booktable">
					<thead>
						<tr>
							<th class="col-md-2">序号</th>
							<th class="col-md-7">书名</th>
							<th class="col-md-3">浏览次数</th>
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
</body>
</html>