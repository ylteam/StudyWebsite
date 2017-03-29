<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章信息管理</title>
<link rel="stylesheet" type="text/css" href="css/articlelist.css">
<script type="text/javascript" src="js/extendPagination.js"></script>
<script type="text/javascript" src="js/articleListManage.js"></script>
</head>
<body>

	<div class="booklist-container col-md-offset-1 col-md-10 col-xs-offset-1 col-xs-10">
		<div class="articlelist panel panel-info col-md-12">
			<div class="panel-heading">文章信息管理</div>
			<div class="table-responsive">
				<table class="table table-striped table-hover articletable">
					<thead>
						<tr>
							<th class="col-md-1">序号</th>
							<th class="col-md-6">标题</th>
							<th class="col-md-3">作者</th>
							<th class="col-md-2"></th>
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
</body>
</html>