<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="shared.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body style="background-color:shinewhite;">
<!--  
<script>  
function validateform(){  
var Address=document.myform.Address.value;  
var pin=document.myform.pin.value;  
  
if (Address==null || Address==""){  
  alert("Address can't be blank");  
}else if(pin.length<6){  
  alert("Pin must be at least 7 characters long.");  
  return false;  
  }  
}  

<script>
function validatepin(pinField)
{
var reg=[0-7]{7};
if (document.getElementById("pin").value=="7")
{
document.getElementById("lblmsg").innerHTML ='please enter you pin*.';
}
else if(reg.test(pinField.value)==false)

{
document.getElementById("lblmsg").innerHTML ='Invalid pin number.';
}
else{
document.getElementById("lblmsg").innerHTML ='';
}
}
</script>


if( document.StudentRegistration.pincode.value == "" ||
           isNaN( document.StudentRegistration.pincode.value) ||
           document.StudentRegistration.pincode.value.length != 6 )
   {
     alert( "Please provide a pincode in the format ######." );
     document.StudentRegistration.pincode.focus() ;
     return false;
   }
</script>
<form action="myform" onbutton="return validateform()" >-->
<div class="jumbotron text-center">
<h1 class= "btn btn-danger btn-sm" Style="font-size:30px;">**Enter Your Location Details**</h1>
<hr>
	</div>
	<center>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h2  ><i class="fa fa-id-card"> Address:</i></h2>
					</div>

					<div class="col-lg-6">
						<input class="form-control"  type="text" placeholder="Enter Address" required="true"></input>
							  
					</div>

				</div>
				<br> <br>
				<div class="row">
					<div class="col-lg-4">
						<h2>
						<i class="	fa fa-spinner"> Pin-Code:</i></h2>
						

						
					</div>

					<div class="col-lg-6">
						<input class="form-control" name="pin" placeholder="Enter Your Pin-Code" required="true"></input>
					</div>
				</div>
				<br> <br> 
				
				
				
				
				
		
		<div class="row">	
		<div class="col-lg-7">
<a class="btn btn-success " href="Thankyou.jsp" role="button" Style="font-size:20px;">Cash On delivery</a>
</div>
<div class="col-lg-3">
<a class="btn btn-success " href="Payment.jsp" role="button" Style="font-size:20px;">Online Payment</a>
</div>
</div>
</div>
</form>
</body>
</html>