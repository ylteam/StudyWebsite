$(function(){
	getArticleList(1,10,0);
	getBookList(1,10,1);
})

function getArticleList(pageNum, pageSize,resourceType){
	$.post("resource_showPersonalBrowseRecord.action",{"curPage" : pageNum,"pageSize" : pageSize,"resourceType" : resourceType},function(result){
		var pageEntity = eval("(" + result + ")");
		var cp = pageEntity.currentPage;
		var pl = pageEntity.pageList;
		var ps = pageEntity.pageSize;
		var tn = pageEntity.totleNumber;
		var tp = pageEntity.totlePage;
		var code="";
		for(var i=0;i<pl.length;i++){
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th>'
			+'<td><a href="resource_showArticleDetail.action?resourceId='+pl[i][0].resourceId+'" target="_blank">'+pl[i][0].articleTitle+'</a></td>'+
			'<td>'+pl[i][1].personBrowseNum+'</td></tr>';
		}
		$("#articletablebody").empty().append(code);
		
		 $('#articleListPager').extendPagination({  
		        totalCount: tn,  
		        showCount: cp,  
		        limit: ps,             
		        callback: function (curr, limit) {
		        	//当点击分页控件页码时会触发此回调函数  
		        	$.post("resource_showPersonalBrowseRecord.action",{"pageSize" : limit,"curPage" : curr,"resourceType" : 0},function(result){
		        		var pageEntity = eval("(" + result + ")");
		        		var cp = pageEntity.currentPage;
		        		var pl = pageEntity.pageList;
		        		var ps = pageEntity.pageSize;
		        		var code="";
		        		for(var i=0;i<pl.length;i++){
		        			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th>'+
		        			'<td><a href="resource_showArticleDetail.action?resourceId='+pl[i][0].resourceId+'" target="_blank">'+pl[i][0].articleTitle+'</a></td>'+
		        			'<td>'+pl[i][1].personBrowseNum+'</td></tr>';
		        		}
		        		$("#articletablebody").empty().append(code);
		        	})
		        }  
		    });  
	})
}

function getBookList(pageNum, pageSize,resourceType){
	$.post("resource_showPersonalBrowseRecord.action",{"curPage" : pageNum,"pageSize" : pageSize,"resourceType" : resourceType},function(result){
		var pageEntity = eval("(" + result + ")");
		var cp = pageEntity.currentPage;
		var pl = pageEntity.pageList;
		var ps = pageEntity.pageSize;
		var tn = pageEntity.totleNumber;
		var tp = pageEntity.totlePage;
		
		console.log(result);
		var code="";
		for(var i=0;i<pl.length;i++){
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="resource_showBookDetail.action?bookId='+pl[i][0].bookId+'" target="_blank">'+pl[i][0].bookTitle+'</a></td><td>'+pl[i][1].personBrowseNum+'</td></tr>';
		}
		$("#booktablebody").empty().append(code);
		
		 $('#booklistPager').extendPagination({  
		        totalCount: tn,  
		        showCount: cp,  
		        limit: ps,             
		        callback: function (curr, limit) {
		        	//当点击分页控件页码时会触发此回调函数  
		        	$.post("resource_showPersonalBrowseRecord.action",{"pageSize" : limit,"curPage" : curr,"resourceType" : 1},function(result){
		        		var pageEntity = eval("(" + result + ")");
		        		var cp = pageEntity.currentPage;
		        		var pl = pageEntity.pageList;
		        		var ps = pageEntity.pageSize;
		        		var code="";
		        		for(var i=0;i<pl.length;i++){
		        			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="resource_showBookDetail.action?bookId='+pl[i][0].bookId+'" target="_blank">'+pl[i][0].bookTitle+'</a></td><td>'+pl[i][1].personBrowseNum+'</td></tr>';
		        		}
		        		$("#booktablebody").empty().append(code);
		        	})
		        }  
		    });  
	})
}
