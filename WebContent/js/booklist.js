$(function(){
	$("#bookTab").click(function(){
		getBookList(1,10);
		getBookTop10();
	})
})


function getBookList(pageNum, pageSize){
	$.post("resource_showAllBooks.action",{"curPage" : pageNum,"pageSize" : pageSize},function(result){
		var pageEntity = eval("(" + result + ")");
		var cp = pageEntity.currentPage;
		var pl = pageEntity.pageList;
		var ps = pageEntity.pageSize;
		var tn = pageEntity.totleNumber;
		var tp = pageEntity.totlePage;
		
		var code="";
		for(var i=0;i<pl.length;i++){
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="resource_showBookDetail.action?bookId='+pl[i].bookId+'" target="_blank">'+pl[i].bookTitle+'</a></td><td>'+pl[i].bookAuthor+'</td><td>'+pl[i].submitTime+'</td></tr>';
		}
		$("#booktablebody").empty().append(code);
		
		 $('#booklistPager').extendPagination({  
		        totalCount: tn,  
		        showCount: cp,  
		        limit: ps,             
		        callback: function (curr, limit) {
		        	//当点击分页控件页码时会触发此回调函数  
		        	$.post("resource_showAllBooks.action",{"pageSize" : limit,"curPage" : curr},function(result){
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

function getBookTop10(){
	$.post("resource_bookTop10.action",{},function(result){
		var list = eval("(" + result + ")");
		var length = list.length > 10 ? 10 : list.length;
		var code = "";
		for(var i=0;i<length;i++){
			code += '<tr><td class="col-md-8 col-xs-8">'+(i+1)+'.<a href="resource_showBookDetail.action?bookId='+list[i].bookId+'" target="_blank">'+list[i].bookTitle+'</a></td><td>阅读量：'+list[i].browseNum+'</td></tr>';
		}
		$("#booktop10body").empty().append(code);
	})
}
