<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/home.js"></script>
<style type="text/css">
.clear{ clear:both;}
.divmenuword{width:80px; float:left;text-align:center;}
A.menu:link,A.menu:active,A.menu:visited{font-size:16px;TEXT-DECORATION:none ;Color:#ffffff; font-family: "Microsoft YaHei";}
A.menu:hover{font-size:16px;TEXT-DECORATION: underline;Color:#ffffff;font-family: "Microsoft YaHei";}

td, div { font-size: 12px; Color: #000000; font-family: "Microsoft YaHei";}
A.f12dh:link,A.f12dh:active,A.f12dh:visited{font-size:12px;TEXT-DECORATION:none ;Color:#666;}
A.f12dh:hover{font-size:12px;TEXT-DECORATION: underline;Color:#035D1C;}
.uixinxititle {border-bottom: 1px solid #eee;padding-bottom: 6px;padding-top: 6px;padding-left: 5px;padding-right: 5px;}
.uixinxititle{margin:0px;}
ul, menu, dir {display: block;-webkit-margin-before: 1em;-webkit-margin-after: 1em;-webkit-margin-start: 0px;-webkit-margin-end: 0px;-webkit-padding-start: 40px;}
.lileft{font-size:14px;color:#4F9235;float:left;width:500px;height:30px; line-height:30px;}
.lileft2 {width: 80px;float: left;height: 30px;line-height: 30px;overflow: hidden;}
.liright{float:right;width:80px;font-size:12px;color:#aaaaaa;height:30px; line-height:30px;}
A.xtitle_red:link,A.xtitle_red:active,A.xtitle_red:visited{font-size:14px;TEXT-DECORATION:none ;Color:red;}
A.xtitle_red:hover{font-size:14px;TEXT-DECORATION: underline;Color:red;}
A.f14:link,A.f14:active,A.f14:visited{font-size:14px;TEXT-DECORATION:none ;Color:#000000;}
A.f14:hover{font-size:14px;TEXT-DECORATION: underline;Color:#035D1C;}
ul, li{list-style-type:none;line-height: 26px;}

A:hover{font-size:14px;TEXT-DECORATION: underline;Color:#035D1C;}
.col-md-1-y,.col-md-2-y,.col-md-3-y,.col-md-4-y,.col-md-5-y,.col-md-6-y,.col-md-7-y,.col-md-8-y,.col-md-9-y,.col-md-10-y,.col-md-11-y,.col-md-12-y{position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;}
.col-md-1-y{width:8.3333333%}
.col-md-2-y{width:16.66666667%}
.col-md-3-y{width:25%}
.col-md-4-y{width:33.33333333%}
.col-md-5-y{width:41.666666667%}
.col-md-6-y{width:50%}
.col-md-7-y{width:58.3333333%}
.col-md-8-y{width:66.666666667%}
.col-md-9-y{width:75%}
.col-md-10-y{width:83.33333333%}
.col-md-11-y{width:91.66666667%}
.col-md-12-y{width:100%}
.right_lileft{font-size:14px;color:#4F9235;float:left;width:200px;height:30px; line-height:30px;}
.right_liright{float:right;width:80px;font-size:12px;color:#aaaaaa;height:30px; line-height:30px;}

.tdcol2{position:relative;min-height:1px;padding-right:5px;padding-left:1px;float:left;width:16.66666667%; margin: 8px 0px 8px 0px;}
.imgsize{width:120px;height:160px;}
.astyle{text-align:center;font-size:14px;Color:#000000;display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
</style>
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
						<input type="image" src="img/search.png" />
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