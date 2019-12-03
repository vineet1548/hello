

<%@page import="imagebank.ImageBankHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="shared.jsp"></c:import>


<%
	ImageBankHandler ibh=new ImageBankHandler();
	request.setAttribute("imageList", ibh.fetchAllImagesInBank());

%>

<style type="text/css">
.card {
	width: 20% !important;
	margin: 20px !important;
	display: inline-flex;
}

img {
	width: 17% !important;
	margin: 0;	
}

.card-body{
	padding: 0;
}
</style>
</head>
<body>


	<br>
	<br>
<center><a  class="btn btn-danger" Style="font-size:30px"><b><u>**Currents Images**</u></b></a></center>
<br>


	
	
	
	<c:if test="${not empty msg}">
		<h1 class="alert alert-danger">${msg}</h1>
	</c:if>	

	<br>
	<a href="AddImageToBank.jsp" class="btn btn-success" Style="font-size:20px"><b>Add Image To Bank</b></a>


	<c:choose>

		<c:when test="${empty imageList}">

			<h1 class="alert alert-danger" Style="font-size:30px"><b><u>**No Images in Bank**</u></b></h1>

		</c:when>
		


		<c:otherwise>


			<hr>
			
			<c:forEach items="${imageList}" var="image">

				<div class="card">
					<!-- <div class="card-header">Header</div> -->
					<div class="card-body">

						<img src="${image.getUrl()}">

					</div>
					<div class="card-footer">

						<a href="DeleteImageBank?id=${image.getId()}"
							class="btn btn-danger">Delete</a>

					</div>
				</div>

			</c:forEach>


		</c:otherwise>
	
	</c:choose>


</body>
</html>