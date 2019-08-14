$(document).ready( function()
		{
	$("#addvhical").submit(function(event)
			{
		var firstname=$("#firstname").val();
		var name=new RegExp(/^[A-Za-z]/);
		if(firstname=="")
			{  
			alert("username not be empty");
			$("#firstname").css("border","2px solid red");
			return false;
			}
			if(!firstname.match(name))
		    {
				alert("allow only alphabet");
				$("#firstname").css("border","2px solid red");
				return false;
			}
			if(firstname.length<3){

				alert("name is greter then 3 charecter");
				$("#firstname").css("border","2px solid red");
				return false;
				
			}
			});
			
		
		});
		