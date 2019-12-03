<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="shared.jsp"></c:import>



</head>
<body>


<c:import url="header.jsp"></c:import>

<br>


<center>	<a class="btn btn-danger btn-sm" Style="font-size:30px;"><b><u>**Add Image To Bank**</u></b></a></center>
<br>

<form method="Post" action="uploadFile" enctype="multipart/form-data" text-align="center">

<input type="file" name="myfile" class="form-control">


<br>

<center><input type="submit" value="Go" class="btn btn-success"></center>
</form>


</body>
</html>