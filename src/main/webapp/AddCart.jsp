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

<form method="POST" action="AddCartToDB">
			<div class="container">
				<div class=""><center>
				<a class="btn btn-danger btn-sm" role="button" Style="font-size:30px;"><b><u>**Add Cart**</u></b></a></center>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h4>Id :</h4>
					</div>

					<div class="col-lg-8">
						<input class="form-control"  name="id" type="number"
							placeholder=" Enter your id"   pattern="[0-9]" title="Enter Your Id  Digite formate" required></input>
					</div>

				</div>
				<br> <br>
				<div class="row">
					<div class="col-lg-4">
						<h4>Product Id :</h4>
					</div>

					<div class="col-lg-8">
						<input class="form-control" name="productid" type="number" placeholder="Enter Your product id" title="Enter Your productid Digite formate" pattern="[0-9]" required></input>
					</div>
				</div>
				
				<br> <br>
				<div class="row">
					<div class="col-lg-4">
						<h4>User id :</h4>
					</div>

					<div class="col-lg-8">
						<input class="form-control" name="userid" type="number"
							placeholder="Enter Your User Id" title="Enter Your userid Digite formate" pattern="[0-9]" required></input>
					</div>
				</div>
				<br> <br>
			
				<div class="row">
					<div class="col-lg-4">
						<h4>Qty :</h4>
					</div>

					<div class="col-lg-8">
						<input class="form-control" name="qty" type="number"
							placeholder="Enter Qty" title="Enter Your Qty Digite formate" pattern="[0-9]" required></input>
					</div>
				</div>
				
				<br><br>
				<center>
					<div class="row">
						<div class="col-lg-12">
							<button class="btn btn-danger" name="submit" type="submit">
								<i class="fa fa-AddCart">Add To Cart</i>
							</button>
						</div>
				</center>
			</div>
		</form>
</body>
</html>