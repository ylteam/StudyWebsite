$(function(){
	$("#bookTab").click(function(){
		getBookList(1,10);
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
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="resource_showBookDetail.action?bookId='+pl[i].bookId+'" target="_blank">'+pl[i].bookTitle+'</a></td><td>'+pl[i].bookAuthor+'</td>'
				+'<td><span class="glyphicon glyphicon-trash operate" title="删除" onclick="deleteBook('+pl[i].bookId+')"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="resource_reviseBookDetail.action?bookId='+pl[i].bookId+'" target="_blank"><span class="glyphicon glyphicon-pencil operate" title="修改"></span></a></td></tr>';
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
		        			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="resource_showBookDetail.action?bookId='+pl[i].bookId+'" target="_blank">'+pl[i].bookTitle+'</a></td><td>'+pl[i].bookAuthor+'</td>'
		        				+'<td><span class="glyphicon glyphicon-trash operate" title="删除" onclick="deleteBook('+pl[i].bookId+')"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="resource_reviseBookDetail.action?bookId='+pl[i].bookId+'" target="_blank"><span class="glyphicon glyphicon-pencil operate" title="修改"></span></a></td></tr>';
		        		}
		        		$("#booktablebody").empty().append(code);
		        	})
		        }  
		    });  
	})
}

function deleteBook(bookId){
	if(confirm("是否确认删除？")){
		$.post("resource_deleteBook.action",{"bookId" : bookId},function(result){
			var obj = eval("(" + result + ")");
			alert(obj.msg);
			getBookList(1,10);
		});
	}
}
