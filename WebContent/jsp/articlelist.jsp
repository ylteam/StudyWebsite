<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章信息</title>
<link rel="stylesheet" type="text/css" href="css/articlelist.css">
<script type="text/javascript" src="js/extendPagination.js"></script>
<script type="text/javascript" src="js/articlelist.js"></script>
</head>
<body>
	<ul class="nav nav-pills nav-justified">
		<li role="presentation" class="active"><a href="#">我要看文章</a></li>
		<li role="presentation"><a href="#">我要看书</a></li>
	</ul>

	<div class="articlelist-container col-md-8 col-xs-8">
		<div class="articlelist panel panel-info col-md-12">
			<div class="panel-heading">最新文章信息</div>
			<div class="table-responsive">
				<table class="table table-striped table-hover articletable">
					<thead>
						<tr>
							<th class="col-md-1">序号</th>
							<th class="col-md-5">标题</th>
							<th class="col-md-3">作者</th>
							<th class="col-md-3">更新时间</th>
						</tr>
					</thead>
					<tbody id="articletablebody">
						<!-- js添加 -->
					</tbody>
				</table>
			</div>
		</div>
		<!--分页按钮-->  
        <div id="callBackPager"></div> 
	</div>

	<div class="ranklist panel panel-danger col-md-4 col-xs-4">
		<div class="panel-heading">热门文章TOP10</div>
		<div class="table-responsive">
			<table class="table table-striped table-hover articletop10">
				<tbody id="articletop10body">
					<!-- js添加 -->
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>