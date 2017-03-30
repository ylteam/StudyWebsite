$(function(){
	
	$("#publishArticleBtn").click(function(){
		var articleTitle = $("#articleTitle").val();
		var articleAuthor = $("#articleAuthor").val();
		var publishTime = $("#publishTime").val();
		var articleContent = CKEDITOR.instances.articleEditor.getData();
		if(articleTitle==""||articleAuthor==""||publishTime==""||articleContent==""){
			alert("请将信息填写完整");
			return;
		}
		$.post("resource_saveResource.action",{
			"resource.articleTitle":articleTitle,
			"resource.articleAuthor":articleAuthor,
			"resource.publishTime":publishTime,
			"resource.articleContent":articleContent
			},
				function(result){
					var data = eval("("+result+")");
					if(data.isSuccess){
						alert('保存成功!');
						$(".nainput").val("");
						CKEDITOR.instances.articleEditor.setData('');
					}else{
						alert('保存失败:(');
					}
				})
	})
})