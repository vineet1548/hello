<%@page import="cart.CartHandler"%>
<%@page import="product.ProductHandler"%>

<%@page import="product.Product"%>
<%@page import="cart.Cart"%>
<%@page import="user.User"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:import url="shared.jsp" />
<%
    CartHandler ch=new CartHandler();
//request.setAttribute("CList", ch.fetchAllCarts());

User u = (User)request.getSession().getAttribute("currentUser");

if( u == null ){
request.setAttribute("CList", ch.fetchAllCarts());
}else{
request.setAttribute("CList", ch.fetchAllCartItemsForUser( u.getId() ));
}

float grandTotal = 0.0f;
ProductHandler ph=new ProductHandler();
%>

</head>
<body Style="background-color:;">

<c:import url="header.jsp" />
<br>
<center>	<a class="btn btn-danger btn-sm" Style="font-size:30px;"><b><u>**View Carts**</u></b></a></center>
	
<a href="viewProduct.jsp" class="btn btn-success btn-sm" Style="font-size:25px;"><i class="fa fa-shopping-bag"> More Items....</i></a>
<hr>
<c:choose>
<c:when test="${empty CList}">
<h1 class="alert alert-danger">Cart is Empty !! Shop more To add<br><br>
Happy Shopping.....</h1>
</c:when>

<c:otherwise>

<hr>

<table class="table  table-striped">
<thead class="table-dark">
<tr>
<th>  <a class="btn btn-primary btn-sm" style=""><i class=""></i>Items</a></th>
<th><a class="btn btn-primary btn-sm" style=""><i class=""></i>Quantity</a></th>
<th><a class="btn btn-primary btn-sm"><i class=""></i>Sub Total</a></th>
<th><a class="btn btn-primary btn-sm"><i class=""></i>Operations</a></th>
</tr>
</thead>
<tbody>




<c:forEach items="${CList}" var="cart">

<tr>
<td>
<!--  --> <%
Cart x = (Cart) (pageContext.getAttribute("cart"));
Product p = ph.fetchProduct((short) (x.getProductId()));
//pageContext.setAttribute("pro",p);
  %>

 
<div class="card" style="max-width: 45%;">
<div class="card-body">
<img style="width: 100%; margin: auto; height: 250px;"
src="<%=p.getImageUrl()%>"> <br> <br>
<h3><%=p.getName()%></h3>
<br>

<h3 class="badge badge-pill badge-danger"><%=p.getCategory().getName()%></h3>
<br>

<h6 style="font-weight: bold;">
Price:	<i id="R" class="fas fa-rupee-sign" style='font-size:18px;color:red'></i>  <%=p.getPrice()%></h6>
<br>

<%=p.getDescription() %>


</div>


</div>


</td>
<td>${cart.getQty()}</td>

<td><%=p.getPrice()* x.getQty()%></td>
<%
grandTotal += p.getPrice() * x.getQty();
%>

<td>
<!-- <a href="" class="btn  btn-outline-primary">edit</a> --> <a
href="DeleteCart?id=${cart.getId()}"
class="btn btn-outline-danger"><i class="fa fa-trash"> delete</i></a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
<center>

<h1 class="btn btn-success" ><b Style="font-size:20px;">Grand Total:  <i class="fas fa-rupee-sign" style='font-size:48px;color:red'></i>  <%=grandTotal%> </h1></b>

</center>
<br>
<center>
<a href="DeleteAddToCart?userId=${sessionScope.currentUser.getId()}"class="btn btn-warning"><i class="	fa fa-check-square" style='font-size:30px;color:red' > <b Style="font-size:30px;">Confirm Order</b></i></a>
</center>
<br>

</c:otherwise>
</c:choose>

</body>
</html>
