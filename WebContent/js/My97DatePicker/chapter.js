$( function(){ 
   
    	$(".add").click(function(){
    		$("#chapter_add").show();
    		
    	})
    	
    	$(".pi01").click(function(){
    	     var temp = $(this).text();
    	    var temp1 = $(this).attr("id");
        	
        	$("#TextBox4").val(temp);
        	$("#TextBox6").val(temp1);
    	    $("#chapter_add").hide();
    	   
    	    
    	})
    	
    	$(".add1").click(function(){
    		$("#chapter_add1").show();
    	})
    	
    	$(".pi001").click(function(){
    	     var temp2 = $(this).text();
    	      var temp3 = $(this).attr("id");
        	$("#TextBox5").val(temp2);
        	$("#TextBox7").val(temp3);
    	    $("#chapter_add1").hide();
    	})
    	
    	$("#Button4").click(function(){
            var par1 = $("#TextBox1").val();
            var par2 = $("#TextBox2").val();
            var par3 = $("#TextBox3").val();
            var par4 = $("#TextBox4").val();
            var par5 = $("#TextBox5").val();
          
    	   $.get("VoyageBeginningInfo1.aspx",{text1:par4})
    	   
    	       })

} ); 
