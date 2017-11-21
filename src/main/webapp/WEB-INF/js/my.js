$(function() {
	$("#tjquery").click(function() {
		 alert('success ..');  
	});
}) 

$(function() { 
            $("#submit").click(function() {   
                var postdata = '{"userName":"' + $("input[name='userName']").val()   + '","passWord":"' + $("input[name='passWord']").val()   + '"}';   
                $.ajax({  
                    type : 'POST',  
                    contentType : 'application/json',  
                    url : 'http://localhost:8080/springmvc/databind2/requestbodybind',  
                    data : postdata,  
                    success : function(data) {  
                        alert(data.userName + "\t" + data.passWord);  
                    },  
                    error : function() {  
                        alert('error...');  
                    }  
                }); 
            });
        });