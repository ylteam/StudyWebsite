$(function(){
	
	$("#sendCommentBtn").click(function(){
		var comment = $("#commentText").val();
		var resourceId = $("#bookId-detail").val();
			
		if(comment == ""){
			alert("请输入评论内容");
		}else{
			$.post("resource_saveComment.action",
					{"comment.resourceId":resourceId,"comment.resourceType":1,"comment.commentContent":comment},
					function(result){
				var obj = eval("("+result+")");
				if(obj.isSuccess){
					alert("评论成功！");
				}else{
					alert(obj.msg);
				}
			})
			
		}
	})
})

