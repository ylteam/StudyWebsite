<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<script type="text/javascript" src="js/home.js"></script>
</head>
<body>
	<div align="center">
	    <div style="width:100%;" >
			<div style="width: 1100px; height: 80px; margin-right: 5px;">
				<form action="" method="post" style="border: 0px; padding: 0px;">
					<div style="float: left; width: 550px; text-align: left; margin-top: 1px;">
						<img src="img/logo.png" border="0" alt="中学生学习交流网" />
					</div>
					<div style="float: right; width: 200px; margin-top: 4px; text-align: right;">
						<div style="float: right; height: 30px; text-align: right;">
							<a href="jsp/login.jsp"><img src="img/login.png" style="border:0px;"></a></div>
						<div style="float: right; height: 30px; margin-top: 2px; text-align: right;">
							<a href="jsp/register.jsp"><img src="img/register.png" style="border:0px;"></a></div>
					</div>
					<div style="float: left; width: 260px; text-align: right; margin-top: 20px;">
						<input id="key" type="text" name="key" maxlength="100"
							style="height: 30px; width: 250px; font-size: 16px; padding-top: 2px; padding-left: 5px; border: 1px solid #ccc;"
							value="" />
					</div>
					<div style="float: left; width: 37x; text-align: right; margin-top: 20px;">
						<input type="image" src="../img/search.png" />
					</div>
				</form>
				<div class="clear"></div>
			</div>
			<div style="background-color: #668D2F; border-bottom: 1px solid #eee; height: 40px;">
				<div style="width: 1100px;">
					<div align="left" style="color: #cccccc;">
						<div style="width: 720px; float: left; height: 40px; line-height: 40px;">
							<div style="width: 700px">
								<div id="aMenu" class="divmenuword" style='background-color: #48681A;'>
									<a class="menu" style="font-size:16px;TEXT-DECORATION:none ;Color:#ffffff; font-family: Microsoft YaHei;">文章</a>
								</div>
								<div id="bMenu" class="divmenuword">
									<a class="menu" style="font-size:16px;TEXT-DECORATION:none ;Color:#ffffff; font-family: Microsoft YaHei;">书籍</a>
								</div>
							</div>
							<div class="clear"></div>
						</div>
						<div style="width: 300px; float: right; text-align: right; height: 40px; color: #fff; line-height: 40px; font-size: 9px;">
							<a href="jsp/login.jsp" class="menu">个人主页</a>
							<!--  &nbsp; | &nbsp;
							<a href="#" class="menu">供应信息</a> &nbsp; | &nbsp; 
							<a href="#" class="menu">求购信息</a> -->
						</div>
					</div>
					<input id="witchPage" hidden="hidden" value="a"/>
					<div class="clear"></div>
				</div>
			</div>

			<div style="width: 1100px; margin-top: 10px;">
				<div class="col-md-9-y">
				<table width="100%" cellpadding="0" cellspacing="0">
					<caption id="new_bookMenu" style="display:none;color:#333">最新图书信息</caption>
					<tr>
						<td width="" align="left" valign="top">
							<div id="articleCaption" style="background-color: #ffffff; border: 1px solid #DDDDDD; text-align: left;">
								<div style="margin: 10px;">
									<div style="color: #333; padding: 0px 0px 6px 0px; width: 260px; float: left;">
										<!-- <a href="#" class="f12dh">农产品信息网</a> >  -->
										<span id="new_articleMenu">最新文章信息</span>
										<!-- <span id="new_bookMenu" style="display:none">最新图书信息</span> -->
									</div>
									<!-- <div style="padding: 0px 0px 6px 0px; float: left;"></div>
									<div style="float: right; padding: 0px 0px 6px 0px;">
										<a href="#" style="text-decoration: underline;">查看求购信息</a>
									</div> -->
								</div>
								<div class="clear"></div>
								<!-- <div id="ContentMain_lblTopList" style="border-top: 1px solid #eee; padding: 0px 0px; margin: 4px 0px 0px 0px;">
									<ul class='uixinxititle'>
										<li class='col-md-9-y'>
											<a href="#" class="xtitle_red" target="_blank" style="display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="湖南常德早熟蜜桔、特早蜜桔（特早现已上市，欢迎订购）">湖南常德早熟蜜桔、特早蜜桔（特早现已上市，欢迎订购）</a>
										</li>
										<li class='col-md-3-y'>
											<div class="col-md-7-y">
												<font title='常德' style='display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;color:#999999;'>防城港防城港防城港防城港</font>
											</div>
											<div class="col-md-5-y">
												<font color=#999999>2016-8-22</font>
											</div>
										</li>
										<li class='clear'></li>
									</ul>
								</div>
								<div style="padding: 10px 10px; text-align: center;">
									<span id="ContentMain_lblPage">共有3995条记录 当前为
										<font color="red">1</font>/200页，每页20条记录 &nbsp; <font color=999999>首页</font>&nbsp;
										<font color=999999>上一页</font>&nbsp; 
										<a href="#">下一页</a>&nbsp;
										<a href="#">末页</a>&nbsp;
										跳转:<input type=text size=2 id=pagenum name=pagenum>
										<input type='button' value='跳转' onclick="location.href='/default.aspx?PageID='+document.getElementById('pagenum').value+'&classid=0&itype=2&prv=&city=&county='"></span>
								</div>
							</div> -->
						</td>
					</tr>
					<tbody id="tbody0">
					</tbody>
				</table>
				<!--分页导航-->
				<div class="row col-md-12-y" id="bottomTool0">
					<div class="col-md-3-y col-md-offset-2">
						<ul class="col-md-12-y">
							<div id="DataTables_Table_0_info0" style="font-size: 12px;margin-top:4px;"></div>
						</ul>
					</div>
					<!--分页-->
					<div class="col-md-4-y">
						<ul id="previousNext0">
							<div class="col-md-4-y">
								<li id="prevli0" onClick="previous0('#tbody0')" class="prev" style="float:right; list-style:none;margin-top:4px;">
									<a id="previousPage0" href="javascript:void(0)">上一页</a>
								</li>
							</div>
							<div class="col-md-4-y" id="page0">
								<select class="form-control input-sm" id="pageNum0" onChange="search0('#tbody0')" 
									aria-controls="DataTables_Table_0" size="1" name="DataTables_Table_0_length0">
									<option selected="selected" value="1">1</option>
								</select>
							</div>
							<div class="col-md-4-y">
								<li id="nextli0" onClick="next0('#tbody0')" style="float: left; list-style:none;margin-top:4px;">
									<a id="nextPage0" href="javascript:void(0)">下一页</a>
								</li>
							</div>
						</ul>
					</div>
					<!--选择每页多少行-->
					<!-- <div class="col-md-3-y" id="DataTables_Table_0_length0">
						<ul class="col-md-12-y">
						<div class="col-md-3-y">
							<span style="float:right;margin-top:4px;">每页 </span>
						</div>
						<div class="col-md-5-y">
							<select class="form-control input-sm" id="pageSize0" onChange="research0('#tbody0')"
								aria-controls="DataTables_Table_0" size="1" name="DataTables_Table_0_length">
								<option selected="selected" value="9">9</option>
								<option value="10">10</option>
								<option value="20">20</option>
							</select> 
						</div>
						<div class="col-md-4-y">
							<span style="float:left;margin-top:4px;">条记录</span>
						</div>
						</ul>
					</div> -->
				</div>
			</div>
			
			<div class="col-md-3-y">
			<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td width="" align="left" valign="top">
							<div style="background-color: #ffffff; border: 1px solid #DDDDDD; text-align: left;">
								<div style="margin: 10px;">
									<div style="color: #333; padding: 0px 0px 6px 0px; float: left;">
										<!-- <a href="#" class="f12dh">农产品信息网</a> >  -->
										<span id="top_articleMenu">文章排行榜</span>
										<span id="top_bookMenu" style="display:none">图书排行榜</span>
									</div>
								</div>
								<div class="clear"></div>
								<!-- <div id="ContentMain_lblTopList" style="border-top: 1px solid #eee; padding: 0px 0px; margin: 4px 0px 0px 0px;">
									<ul class='uixinxititle'>
										<li class='col-md-10-y'>
											<div class='col-md-1-y'>
											<font color=#999999>1</font>
											</div>
											<div class='col-md-11-y'>
											<a href="#" class="f14" target="_blank" style="display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="冬季西瓜育苗需谨慎">冬季西瓜育苗需谨慎</a>
											</div>
										</li>
										<li class='col-md-2-y'>8-24</li>
										<li class='clear'></li>
									</ul>
								</div> -->
							</div>
						</td>
					</tr>
					<tbody id="tbody1">
					</tbody>
				</table>
			</div>
			</div>
		</div>
	</div>
</body>
</html>