$(function() {
	//$("#pageSize0").val(9);
	$("#pageNum0").val(1);
	search0("#tbody0");

	searchTop("#tbody1");
	$("#aMenu").click(function () {
        $("#witchPage").val("a");
        $("#aMenu").css("background-color","#48681A");
        $("#bMenu").css("background-color","");
        $("#articleCaption").css("display","block");
        $("#new_articleMenu, #top_articleMenu").css("display","block");
        $("#new_bookMenu, #top_bookMenu").css("display","none");
        $("#pageNum0").val(1);
        search0("#tbody0");
        searchTop("#tbody1");
    });
	$("#bMenu").click(function () {
        $("#witchPage").val("b");
        $("#aMenu").css("background-color","");
        $("#bMenu").css("background-color","#48681A");
        $("#articleCaption").css("display","none");
        $("#new_articleMenu, #top_articleMenu").css("display","none");
        $("#new_bookMenu, #top_bookMenu").css("display","block");
        $("#pageNum0").val(1);
        search0("#tbody0");
        searchTop("#tbody1");
    });
});
function next0(tbodyId) {
	var id = $("#pageNum0 option:selected").val();
	var nextPage = parseInt(id) + 1;
	var list = document.getElementById("pageNum0").options;
	var nextOption = list[nextPage - 1];
	nextOption.selected = true;
	search0(tbodyId);
}

function previous0(tbodyId) {
	var id = $("#pageNum0 option:selected").val();
	var previousPage = parseInt(id) - 1;
	var list = document.getElementById("pageNum0").options;
	var previousOption = list[previousPage - 1];
	previousOption.selected = true;
	search0(tbodyId);
}

function research0(tbodyId) {
	var list = document.getElementById("pageNum0").options;
	var nextOption = list[0];
	nextOption.selected = true;
	search0(tbodyId);
}

//最新文章/书籍信息
function search0(tbodyId) {
	//var pageSize = $("#pageSize0").val();
	//var pageSize = $("#pageSize0").val();
	var pageNum = $("#pageNum0").val();
	if(pageNum == "" || null == pageNum){
		pageNum = 1;
	}
	var witchPage = $("#witchPage").val();
	if("a" == witchPage){
		var pageSize = 9;
		var action = "resource_showAllArticle.action";
		var a = "resource_showArticleDetail.action";
	}else{
		var pageSize = 12;
		var action = "resource_showAllBooks.action";
		var a = "resource_showBookDetail.action";
	}
	//var action = $("#act0").html();
	//var a = $("#a0").html();
	$.ajax({
		type : "POST",
		async : true,
		/*url : "planTrain_findTecnicReviseToDo.action",*/
		url : action,
		data : {
			"pageSize" : pageSize,
			"curPage" : pageNum,
		},
		dataType : "text",
		success : function(data) {
			alert(data)
			var pageEntity = eval("(" + data + ")");
			var obj = pageEntity.pageList; //结果集
			//将除模板行的thead删除，即删除之前的数据重新加载
			var code = "";
			for (var i = 0; i < obj.length; i++) {
					/*<ul class='uixinxititle'>
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
					</ul>*/
				if("a" == witchPage){//最新文章信息显示
					code += "<tr style='padding: 0px 0px; margin: 4px 0px 0px 0px;'><td>"
						+ "<ul style='border-bottom: 1px solid #eee;border-left: 1px solid #DDDDDD;border-right: 1px solid #DDDDDD;padding-bottom: 8px;padding-top: 8px;padding-left: 5px;padding-right: 5px;margin: 0px;'>"
						+ "<li style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:75%;'>"
						+ "<a href='"+a+"?resourceId="+obj[i].resourceId+"' target='_blank' style='font-size:14px;Color:#000000;display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;' title='"+obj[i].articleTitle+"'>"
						+ obj[i].articleTitle + "</a></li>"
						+ "<li style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:25%;'>"
						+ "<div style='position:relative;min-height:1px;padding-right:5px;padding-left:1px;float:left;width:58.3333333%;'>"
						+ "<font title='"+ obj[i].articleAuthor +"' style='display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;color:#999999;'>" + obj[i].articleAuthor + "</font></div>"
						+ "<div style='position:relative;min-height:1px;padding-right:5px;padding-left:1px;float:left;width:41.666666667%;'>"
						+ "<font style='color:#999999;'>" + obj[i].publishTime + "</font></div></li>"
						+ "<li style='clear:both;'></li>"
						+ "</ul>"
						+ "</td></tr>";
				}else{//最新书籍信息显示（一行显示6本，一页显示两行）
					/*code += "<td style='position:relative;min-height:1px;padding-right:5px;padding-left:1px;float:left;width:16.66666667%; margin: 8px 0px 8px 0px;'>"
						+ "<a href='"+a+"?bookId="+obj[i].bookId+"' target='_blank'>"
						+ "<img src='"+obj[i].bookPhotoAddr+"' style='width:120px;height:160px;' alt='"+obj[i].bookTitle+"'></a>"
						+ "<a href='"+a+"?bookId="+obj[i].bookId+"' target='_blank' style='text-align:center;font-size:14px;Color:#000000;display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;' title='"+obj[i].bookTitle+"'>"
						+ obj[i].bookTitle +"</a>"
						+ "</td>";*/
					code += "<td class='tdcol2'>"
						+ "<a href='"+a+"?bookId="+obj[i].bookId+"' target='_blank'>"
						+ "<img src='"+obj[i].bookPhotoAddr+"' class='imgsize' alt='"+obj[i].bookTitle+"'></a>"
						+ "<a href='"+a+"?bookId="+obj[i].bookId+"' target='_blank' class='astyle' title='"+obj[i].bookTitle+"'>"
						+ obj[i].bookTitle +"</a>"
						+ "</td>";
				}
			}
			console.log(code);
			$(tbodyId).empty().append(code);

			var currentPage = pageEntity.currentPage;
			var totlePage = pageEntity.totlePage;
			var totleNumber = pageEntity.totleNumber;

			//$("#DataTables_Table_0_info0").html("共" + totlePage + "页/共" + totleNumber + "项");
			$("#DataTables_Table_0_info0").html("共有"+ totleNumber +"条记录  / 每页" + pageSize + "条记录");

			//显示所有的页码数
			var pageSelect = document.getElementById("page0");
			var pageOption = "";
			var flag;

			//删除select下所有的Option,清楚所有页码
			document.getElementById("pageNum0").options.length = 0;
			for (var i = 0; i < totlePage; i++) {
				flag = (i + 1).toString();
				var option;
				//如果等于当前页码数
				if (flag == pageNum) {
					option = new Option(flag, flag, false, true);
				} else {
					option = new Option(flag, flag, false, false);
				}
				document.getElementById("pageNum0").options.add(option);
			}

			//判断页数，下一页都为灰色
			if (currentPage == totlePage) {
				$("#nextPage0").css("color", "#aaa");
				$("#nextli0").css("pointer-events", "none");
			} else if(totlePage == 0){
				$("#nextPage0").css("color", "#aaa");
				$("#nextli0").css("pointer-events", "none");
				//$("#pageSize0").attr("disabled", true); //每页记录数不可选
			} else {
				$("#nextPage0").css("color", "#00f");
				$("#nextli0").css("pointer-events", "auto");
			}
			if (currentPage == 1) { //首页则给上一页灰色
				$("#previousPage0").css("color", "#aaa");
				$("#prevli0").css("pointer-events", "none");
			} else { //尾页则上一页蓝，下一页灰
				$("#previousPage0").css("color", "#00f");
				$("#prevli0").css("pointer-events", "auto");
			}
		}
	});
}


//排行榜
function searchTop(tbodyId) {
	var witchPage = $("#witchPage").val();
	if("a" == witchPage){
		var action = "resource_articleTop10.action";
		var a = "resource_showArticleDetail.action";
	}else{
		var action = "resource_bookTop10.action";
		var a = "resource_showBookDetail.action";
	}
	//var a = $("#a1").html();
	//var action1 = $("#act2").html();
	$.ajax({
		type : "POST",
		async : true,
		url : action,
		data : {},
		dataType : "text",
		success : function(data) {
			alert(data)
			var obj = eval("(" + data + ")");//结果集
			var objLength = obj.length;
			if(objLength > 10){//只取排名前10
				objLength = 10;
			}
			//将除模板行的thead删除，即删除之前的数据重新加载
			var code = "";
			for (var i = 0; i < objLength; i++) {
				if("a" == witchPage){//文章排行榜显示
					/*<div id="ContentMain_lblTopList" style="border-top: 1px solid #eee; padding: 0px 0px; margin: 4px 0px 0px 0px;">
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
					</div>*/
					/*+ "<a href='"+a+"?resourceId="+obj[i].resourceId+"' target='_blank' title='"+obj[i].articleTitle+"'>"
					+ obj[i].articleTitle.substring(0,20) + "</a></div>"*/
					code += "<tr style='padding: 0px 0px; margin: 4px 0px 0px 0px;'><td>"
						+ "<ul style='border-bottom: 1px solid #eee;border-left: 1px solid #DDDDDD;border-right: 1px solid #DDDDDD;padding-bottom: 8px;padding-top: 8px;padding-left: 5px;padding-right: 5px;margin: 0px;'>"
						+ "<li style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:83.33333333%;'>"
						+ "<div style='position:relative;min-height:1px;padding-right:5px;padding-left:1px;float:left;width:8.3333333%;'>"
						+ "<font color='#999999'>" + (i+1) + "</font></div>"
						+ "<div style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:91.66666667%;'>"
						+ "<a href='"+a+"?resourceId="+obj[i].resourceId+"' target='_blank' style='font-size:14px;Color:#035D1C;display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;' title='"+obj[i].articleTitle+"'>"
						+ obj[i].articleTitle + "</a></div>"
						+ "</li>"
						+ "<li style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:16.66666667%;Color:red;'>"
						+ obj[i].browseNum + "</li>"
						+ "<li style='clear:both;'></li>"
						+ "</ul>"
						+ "</td></tr>";
				}else{//书籍排行榜显示
					code += "<tr style='padding: 0px 0px; margin: 4px 0px 0px 0px;'><td>"
						+ "<ul style='border-bottom: 1px solid #eee;border-left: 1px solid #DDDDDD;border-right: 1px solid #DDDDDD;padding-bottom: 8px;padding-top: 8px;padding-left: 5px;padding-right: 5px;margin: 0px;'>"
						+ "<li style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:83.33333333%;'>"
						+ "<div style='position:relative;min-height:1px;padding-right:5px;padding-left:1px;float:left;width:8.3333333%;'>"
						+ "<font color='#999999'>" + (i+1) + "</font></div>"
						+ "<div style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:91.66666667%;'>"
						+ "<a href='"+a+"?bookId="+obj[i].bookId+"' target='_blank' style='font-size:14px;Color:#035D1C;display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;' title='"+obj[i].bookTitle+"'>"
						+ obj[i].bookTitle + "</a></div>"
						+ "</li>"
						+ "<li style='position:relative;min-height:1px;padding-right:5px;padding-left:5px;float:left;width:16.66666667%;Color:red;'>"
						+ obj[i].browseNum + "</li>"
						+ "<li style='clear:both;'></li>"
						+ "</ul>"
						+ "</td></tr>";
				}
			}
			alert(code)
			$(tbodyId).empty().append(code);
		}
	});
}
