﻿$(function(){
	//获取所有评论
	getComment();
	
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
					$("#commentText").val("")
					getComment();
					alert("评论成功！");
				}else{
					alert(obj.msg);
				}
			})
			
		}
	})
})

function getComment(){
	var resourceId = $("#bookId-detail").val();
	$.post("resource_showComment.action",{"resourceId":resourceId,"resourceType":1},function(result){
		var comList = eval("("+result+")");
		$("#commentPanelHead").html("累计评价("+comList.length+")")
		$("#commentList").empty();
		$.each(comList,function(k,v){
			$("#commentList").append('<li class="list-group-item"><span class="nametime">'+v["username"]+'&nbsp;&nbsp;'+v['submitTime']+'</span><br>'
					+'<span class="commentShow">'+v['commentContent']+'</span></li>');
		})
	})
}

