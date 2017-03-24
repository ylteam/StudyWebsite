<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章信息</title>
<link rel="stylesheet" type="text/css" href="css/booklist.css">
<script type="text/javascript" src="js/extendPagination.js"></script>
<script type="text/javascript" src="js/booklist.js"></script>
</head>
<body>
	<div class="booklist-container col-md-8 col-xs-8">
		<div class="booklist panel panel-info col-md-12">
			<div class="panel-heading">最新图书信息</div>
			<div class="table-responsive">
				<table class="table table-striped table-hover booktable">
					<thead>
						<tr>
							<th class="col-md-1">序号</th>
							<th class="col-md-5">书名</th>
							<th class="col-md-3">作者</th>
							<th class="col-md-3">更新时间</th>
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

	<div class="bookRankList panel panel-danger col-md-4 col-xs-4">
		<div class="panel-heading">热门图书TOP10</div>
		<div class="table-responsive">
			<table class="table table-striped table-hover booktop10">
				<tbody id="booktop10body">
					<!-- js添加 -->
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>