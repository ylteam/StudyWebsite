$(function(){
	getArticleList(1,10);
	
	$("#articleTab").click(function(){
		getArticleList(1, 10);
	})
})

function getArticleList(pageNum, pageSize){
	$.post("resource_showAllArticle.action",{"curPage" : pageNum,"pageSize" : pageSize},function(result){
		var pageEntity = eval("(" + result + ")");
		var cp = pageEntity.currentPage;
		var pl = pageEntity.pageList;
		var ps = pageEntity.pageSize;
		var tn = pageEntity.totleNumber;
		var tp = pageEntity.totlePage;
		
		var code="";
		for(var i=0;i<pl.length;i++){
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th>'
			+'<td><a href="resource_showArticleDetail.action?resourceId='+pl[i].resourceId+'" target="_blank">'+pl[i].articleTitle+'</a></td><td>'+pl[i].articleAuthor+'</td>'
			+'<td><span class="glyphicon glyphicon-trash operate" title="删除" onclick="deleteResource('+pl[i].resourceId+')"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="resource_reviseArticleDetail.action?resourceId='+pl[i].resourceId+'" target="_blank"><span class="glyphicon glyphicon-pencil operate" title="修改"></span></a></td></tr>';
		}
		$("#articletablebody").empty().append(code);
		
		 $('#articleListPager').extendPagination({  
		        totalCount: tn,  
		        showCount: cp,  
		        limit: ps,             
		        callback: function (curr, limit) {
		        	//当点击分页控件页码时会触发此回调函数  
		        	$.post("resource_showAllArticle.action",{"pageSize" : limit,"curPage" : curr},function(result){
		        		var pageEntity = eval("(" + result + ")");
		        		var cp = pageEntity.currentPage;
		        		var pl = pageEntity.pageList;
		        		var ps = pageEntity.pageSize;
		        		var code="";
		        		for(var i=0;i<pl.length;i++){
		        			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th>'+
		        			'<td><a href="resource_showArticleDetail.action?resourceId='+pl[i].resourceId+'" target="_blank">'+pl[i].articleTitle+'</a></td><td>'+pl[i].articleAuthor+'</td>'
		        			+'<td><span class="glyphicon glyphicon-trash operate" title="删除" onclick="deleteResource('+pl[i].resourceId+')"></span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="resource_reviseArticleDetail.action?resourceId='+pl[i].resourceId+'" target="_blank"><span class="glyphicon glyphicon-pencil operate" title="修改"></span></a></td></tr>';
		        		}
		        		$("#articletablebody").empty().append(code);
		        	})
		        }  
		    });  
	})
}

function deleteResource(resourceId){
	if(confirm("是否确认删除？")){
		$.post("resource_deleteResource.action",{"resourceId" : resourceId},function(result){
			var obj = eval("(" + result + ")");
			alert(obj.msg);
			getArticleList(1,10);
		});
	}
}
