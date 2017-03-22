$(function(){
	getArticleList(1,10);
	getTop10();
})


function getArticleList(pageNum, pageSize){
	$.post("resource_showAllArticle.action",{"pageSize" : pageSize,"curPage" : pageNum},function(result){
		var pageEntity = eval("(" + result + ")");
		var cp = pageEntity.currentPage;
		var pl = pageEntity.pageList;
		var ps = pageEntity.pageSize;
		var tn = pageEntity.totleNumber;
		var tp = pageEntity.totlePage;
		
		var code="";
		for(var i=0;i<pl.length;i++){
			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="#">'+pl[i].articleTitle+'</a></td><td>'+pl[i].articleAuthor+'</td><td>'+pl[i].submitTime+'</td></tr>';
		}
		$("#articletablebody").empty().append(code);
		
		 $('#callBackPager').extendPagination({  
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
		        			code += '<tr><th>'+((cp-1)*ps+i+1)+'</th><td><a href="#">'+pl[i].articleTitle+'</a></td><td>'+pl[i].articleAuthor+'</td><td>'+pl[i].submitTime+'</td></tr>';
		        		}
		        		$("#articletablebody").empty().append(code);
		        	})
		        }  
		    });  
	})
}

function getTop10(){
	$.post("resource_articleTop10.action",{},function(result){
		var list = eval("(" + result + ")");
		var length = list.length > 10 ? 10 : list.length;
		var code = "";
		for(var i=0;i<length;i++){
			code += '<tr><td class="col-md-8 col-xs-8">'+(i+1)+'.<a href="#">'+list[i].articleTitle+'</a></td><td>点击量：'+list[i].browseNum+'</td></tr>';
		}
		$("#articletop10body").empty().append(code);
	})
}
