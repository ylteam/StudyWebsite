$(function(){
	//更新图书信息
	$("#reviseBookBtn").click(function(){
		var bookId = $("#bookId").val();
		var bookTitle = $("#bookTitle").val();
		var bookAuthor = $("#bookAuthor").val();
		var publishTime = $("#publishTime").val();
		var isbnNum = $("#isbnNum").val();
		var bookContent = $("#bookContent").val();
		if(bookId=="" || bookTitle=="" || bookAuthor=="" || publishTime=="" || isbnNum=="" || bookContent==""){
			alert("请将信息补充完整");
			return false;
		}
		$.ajax({
	        type: "POST",
	        async : true,
	        url: "resource_updateBook.action",
	        data: {
	        	"book.bookId" : bookId,
	        	"book.bookTitle" : bookTitle,
	        	"book.bookAuthor" : bookAuthor,
	        	"book.publishTime" : publishTime,
	        	"book.isbnNum" : isbnNum,
	        	"book.bookContent" : bookContent,
	        },
	        success: function (data) {
	        	var obj = eval("("+data+")");
	        	alert(obj.msg);
	        },
	        error: function (data) {
	        	var obj = eval("("+data+")");
	        	alert(obj.msg);
	        }
	    });
	});
	
	//更新文章信息
	$("#reviseResourceBtn").click(function(){
		var resourceId = $.trim($("#resourceId").val());
		var articleTitle = $.trim($("#articleTitle").val());
		var articleAuthor = $.trim($("#articleAuthor").val());
		var publishTime = $.trim($("#publishTime").val());
		var articleContent = CKEDITOR.instances.articleEditor.getData();
		if(resourceId=="" || articleTitle=="" || articleAuthor=="" || publishTime=="" || articleContent==""){
			alert("请将信息补充完整");
			return false;
		}
		$.ajax({
	        type: "POST",
	        async : true,
	        url: "resource_updateResource.action",
	        data: {
	        	"resource.resourceId" : resourceId,
	        	"resource.articleTitle" : articleTitle,
	        	"resource.articleAuthor" : articleAuthor,
	        	"resource.publishTime" : publishTime,
	        	"resource.articleContent" : articleContent,
	        },
	        success: function (data) {
	        	var obj = eval("("+data+")");
	        	alert(obj.msg);
	        },
	        error: function (data) {
	        	var obj = eval("("+data+")");
	        	alert(obj.msg);
	        }
	    });
	});
})