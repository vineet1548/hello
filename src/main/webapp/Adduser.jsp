<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="shared.jsp"></c:import>
<c:import url="header.jsp"></c:import>
</head>
<body>
<!--
<script type="text/javascript">

function validateEmail(emailField)
{
var reg=;
if (document.getElementById("txtmail").value=="")
{
document.getElementById("lblmsg").innerHTML ='please enter email id.*.';
}
else if(reg.test(emailField.value)==false)

{
document.getElementById("lblmsg").innerHTML ='Invalid email Address*.';
}
else{
document.getElementById("lblmsg").innerHTML ='';
}
}
-->
<form method="POST" action="AddUserToDB">
			<div class="container">
				<div class="">
				<center>	
				<a class="btn btn-danger btn-sm" role="button" Style="font-size:30px;"><b><u>**Add User**</u></b></a></center>
				</div>
			</div>
			
			<hr>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h4>User Name:</h4>
					</div>

					<div class="col-lg-8">
							<input class="form-control"  name="UserName" placeholder=" Enter User Name" 
							 title="Enter Valid Name" required></input>
					</div>

				</div>
				
				<br> <br>
				<div class="row">
					<div class="col-lg-4">
						<h4>Contact Number:</h4>
				</div>

					<div class="col-lg-8">
					
							<input class="form-control" name="num"  placeholder="Enter contact Number" 
							pattern="[6789][0-9]{9}" title="Must contain number 10 digites(Valid Number)" required></input>
					
					</div>
				  </div>
				
				<br> <br>
					<div class="row">
						<div class="col-lg-4">
						<h4>Email-Id:</h4>
					</div>

					<div class="col-lg-8">
						
						<input 
						class="form-control" name="email"
						placeholder="Enter Email-Id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
						title="Invalid Email plz create Strong email(@,domain,.com)" required></input>
						<lable id="lblmsg" style="color:red; font-weight:bold;">
					</div>
				</div>
				<br> <br>
			
				<div class="row">
					<div class="col-lg-4">
						<h4>Password:</h4>
					</div>

					<div class="col-lg-8">
						<input class="form-control" name="password" type="password"
						placeholder="Enter Contact Number"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></input>
					</div>
				</div>
				
				
				<br>
				<br>
				<center>
					<div class="row">
						<div class="col-lg-12">
							<button class="btn btn-danger" name="submit" type="submit">
								<i class="fa fa-plus">Add</i>
							</button>
						</div>
						</div>
				</center>
			</div>
		</form>
</body>
</html>