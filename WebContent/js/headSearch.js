$(function(){
	var searchContent = $("#searchContent").val();
	getArticleList(1,10,searchContent);
	getBookList(1,10,searchContent);
	
})
//搜索文章
function getArticleList(pageNum, pageSize, searchContent){
	$.post("resource_findArticleByArticleTitle.action",{"curPage" : pageNum, "pageSize" : pageSize, "searchContent" : searchContent},function(result){
		var pageEntity = eval("(" + result + ")");
		var cp = pageEntity.currentPage;
		var pl = pageEntity.pageList;
		var ps = pageEntity.pageSize;
		var tn = pageEntity.totleNumber;
		var tp = pageEntity.totlePage;
		$("#articlePanelHeading").html('“'+searchContent+'”文章查询结果');
		var code="";
		for(var i=0;i<pl.length;i++){
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th>'
			+'<td><a href="resource_findArticleByArticleTitle.action?resourceId='+pl[i].resourceId+'" target="_blank">'+pl[i].articleTitle+'</a></td>'+
			'<td>'+pl[i].articleAuthor+'</td><td>'+pl[i].submitTime+'</td></tr>';
		}
		$("#articletablebody").empty().append(code);
		
		if(tn == 0){
			$("#articletablebody").empty().append("<tr><td colspan='4'>没有找到符合要求的文章<td><tr>")
		}
		
		$('#articleListPager').extendPagination({  
			totalCount: tn,  
			showCount: cp,  
			limit: ps,             
			callback: function (curr, limit) {
				//当点击分页控件页码时会触发此回调函数  
				$.post("resource_showAllArticle.action",{"pageSize" : limit, "curPage" : curr, "searchContent" : searchContent},function(result){
					var pageEntity = eval("(" + result + ")");
					var cp = pageEntity.currentPage;
					var pl = pageEntity.pageList;
					var ps = pageEntity.pageSize;
					var code="";
					for(var i=0;i<pl.length;i++){
						code += '<tr><th>'+((cp-1)*ps+i+1)+'</th>'+
						'<td><a href="resource_showArticleDetail.action?resourceId='+pl[i].resourceId+'" target="_blank">'+pl[i].articleTitle+'</a></td>'+
						'<td>'+pl[i].articleAuthor+'</td><td>'+pl[i].submitTime+'</td></tr>';
					}
					$("#articletablebody").empty().append(code);
				})
			}
	    });
	})
}
//搜索图书
function getBookList(pageNum, pageSize, searchContent){
	$.post("resource_findBookByArticleTitle.action",{"curPage" : pageNum, "pageSize" : pageSize, "searchContent" : searchContent},function(result){
		var pageEntity = eval("(" + result + ")");
		var cp = pageEntity.currentPage;
		var pl = pageEntity.pageList;
		var ps = pageEntity.pageSize;
		var tn = pageEntity.totleNumber;
		var tp = pageEntity.totlePage;
		
		$("#bookPanelHeading").html('“'+searchContent+'”图书查询结果');
		
		var code="";
		for(var i=0;i<pl.length;i++){
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="resource_showBookDetail.action?bookId='+pl[i].bookId+'" target="_blank">'+pl[i].bookTitle+'</a></td><td>'+pl[i].bookAuthor+'</td><td>'+pl[i].submitTime+'</td></tr>';
		}
		$("#booktablebody").empty().append(code);
		if(tn == 0){
			$("#booktablebody").empty().append("<tr><td colspan='4'>没有找到符合要求的图书</td></tr>")
		}
		
		
		$('#booklistPager').extendPagination({  
	        totalCount: tn,  
	        showCount: cp,  
	        limit: ps,             
	        callback: function (curr, limit) {
	        	//当点击分页控件页码时会触发此回调函数  
	        	$.post("resource_findBookByArticleTitle.action",{"pageSize" : limit, "curPage" : curr, "searchContent" : searchContent},function(result){
	        		var pageEntity = eval("(" + result + ")");
	        		var cp = pageEntity.currentPage;
	        		var pl = pageEntity.pageList;
	        		var ps = pageEntity.pageSize;
	        		var code="";
	        		for(var i=0;i<pl.length;i++){
	        			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="resource_showBookDetail.action?bookId='+pl[i].bookId+'" target="_blank">'+pl[i].bookTitle+'</a></td><td>'+pl[i].bookAuthor+'</td><td>'+pl[i].submitTime+'</td></tr>';
	        		}
	        		$("#booktablebody").empty().append(code);
	        	})
	        }
	    });
	})
}