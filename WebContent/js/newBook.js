$(function(){
	
	$("#publishBookBtn").click(function(){
		
		var formData = new FormData($( "#uploadForm" )[0]);//使用FormData，进行Ajax请求并上传文件
		$.ajax({
	        type: "POST",
	        async : true,
	        cache: false,
	        contentType:false, //必须false才会避开jQuery对 formdata 的默认处理 , XMLHttpRequest会对 formdata 进行正确的处理
	        processData: false, //必须false才会自动加上正确的Content-Type 
	        url: "resource_saveBook.action",
	        data: formData,
	        success: function (data) {
	        	var obj = eval("("+data+")");
	        	alert(obj.msg);
	        }
	    });
	})
	
})