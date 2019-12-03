<%@page import="product.ProductHandler"%>
<%@page import="user.UserHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<c:import url="shared.jsp" />



<%
	ProductHandler ph = new ProductHandler();

	request.setAttribute("productList", ph.fetchAllProducts());
%>

<style type="text/css">
.card {
	width: 30% !important;
	margin: 20px !important;
	display: inline-flex;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
}

.card-body {
	padding: 0;
	margin: 0;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	border-color: red;
}
</style>
</head>
<body>


	<c:import url="header.jsp" />
	<br>
	<br>

	<center>	<a class="btn btn-danger btn-sm" Style="font-size:30px;"><b><u>**Current Products**</u></b></a></center>
	<br>
	<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
		<a href="AddProduct.jsp" class="btn btn-success" Style="font-size:25px;"><i class="fa fa-gift"> Add Product</i></a>
	</c:if>
	<c:choose>

		<c:when test="${empty productList }">
			<h1 class="alert alert-danger">No Product in DB</h1>
		</c:when>

		<c:otherwise>

			<hr>
			<div class="row">
				<c:forEach items="${productList }" var="product">



					<div class="card">
						<%--    <div class="card-header">Header</div> --%>


						<div class="card-body">

							<img style="width: 80%; margin: auto; align: center;"
								src="${product.getImageUrl()}">

							<h1>${product.getName()}</h1>
							<br>

							<h3 class="badge badge-success"
								Style="margin-left: 20px; font-size: 20px;">${product.getCategory().getName()}</h3>
							<br>

							<h6 Style="margin-left: 20px;">Price: 
								<i class="fas fa-rupee-sign" style='font-size:18px;color:red'></i>  ${product.getPrice()}/-</h6>
							<br>
							<p>
								<h3 class="btn btn-primary btn-sm"
								 Style="margin-left: 20px;font-size:12px;">${product.getDescription()}
								</h3>
							</p>

							<h6 Style="margin-left: 20px;">
								In Stock: <span class="badge badge-warning"
									style="padding: 10px;">${product.getStockqty()}</span>
							</h6>

						</div>



						<div class="card-footer">

					<!-- 		
								<a class="btn btn-success" href="EditProduct.jsp">Edit</a> -->
								<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
								<a class="btn btn-danger"
									href="DeleteProductfromDB?id=${product.getId()}"><i class="fa fa-trash">  Delete</i></a>
							</c:if>		

							<c:if test="${sessionScope.currentUser.getRole()=='User'}">

								<form action="AddCartToDB" method="POST">
									<div class="container">

										<div class="row">
										
										<!-- Add to Cart -->
									 	<div class="col-lg-8">
												<Button class="btn btn-danger" href="ViewCart.jsp">
											<i class="fas fa-cart-plus">		Add To Cart</i>
												</Button>
											</div>     
											

											<div class="col-lg-4">

												
												 <input type="number" name="qty"
													style="width: 100%; float: right;" placeholder="Qty"
													class="form-control" required="true">
													
												</div>
										</div>
										
										<input type="hidden"
										value="${sessionScope.currentUser.getId()}" name="userId">
									<input type="hidden" value="${product.getId()}" name="productId">
									</div>
								</form>

							</c:if>
						</div>
					</div>



				</c:forEach>
			</div>
		</c:otherwise>

	</c:choose>




</body>
</html>