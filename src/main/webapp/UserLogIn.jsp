<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="shared.jsp"></c:import>

</head>
<body style="background-color:;">

	<c:import url="header.jsp"/>
	
	<c:if test="${not empty invalid}">
		<h1 class="alert alert-danger">Invalid Credentials</h1>
	</c:if>
	
	<script>
	function myfun(){
		var x = document.getElementById("pass")
		if(x.type==="password")
		{
		x.type="text";	
		}
		else
			{
			x.type="password"
			}
	}
	
	</script>
<center>
<form  method="POST" action="CheckLogin">
<!--  <action="http://www.javatpoint.com/javascriptpages/valid.jsp" onsubmit="return validateform()" >  -->
			<div class="container">
				<div class="row">
					<h1 Style="margin-left:px;">Login Here.....</h1>
					
				</div>
				<br>
					<a class="btn btn-success btn-sm" href="Adduser.jsp" role="button" Style="font-size:20px;margin-left:500px;"><i class="fa fa-user">Create New Account</i></a>
	
<br>
				<hr>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h4><i class="fa fa-envelope icon"></i>Email-Id:</h4>
					</div>

					<div class="col-lg-6">
						<input class="form-control" id="email" type="text" name="email"
							placeholder="Enter Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Invalid Email Id Plz Enter Valid Email-Id" 
							required="">
							
					</div>

				</div>
				<br> <br>
				<div class="row">
					<div class="col-lg-4">
						<h4><i class="fa fa-key icon"></i>Password:</h4>
					</div>
					
					<div class="col-lg-6">
	<input class="form-control" type="password" name="password" id="pass" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Invalid Password plz Enter Valid Password" required>			
	<br>
	<input type="checkbox" onclick="myfun()">
	Show Password</input>
	
						
					</div>
				</div>
				
				<br> <br>
				<center>
					<div class="row">
						<div class="col-lg-12">
							<button class="btn btn-danger" name="submit" type="submit">
								<i class="fa fa-login-sign">Login</i>
							</button>
							</div>
								</center>
						<!-- <br>
							<br>
							<center>
							<div class="row">
						
						<div class="col-lg-12">
							<button class="btn btn-danger" a href="Adduser.jsp" name="Sign in" type="Sign in">
								<i class="fa fa-plus">SignIn</i>
							</button>
							</div>
							</center> -->	
			</div>
			</div>
		
		</form>
			</center>
</body>
</html>