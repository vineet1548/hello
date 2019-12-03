<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<nav class="navbar navbar-expand-sm bg-dark navbar-dark" >

  <!-- Brand -->
 <c:if test="${not empty sessionScope.currentUser}">
 		<a class="btn btn-primary" class="navbar-brand" href="#" >Welcome : <i class="fa fa-user"> ${sessionScope.currentUser.getEmail()}</i></a>
 		<a class="btn btn-danger" class="navbar-brand" Style="margin-left:15px;" href="Logout" ><i class="fa fa-street-view"> Logout</i></a>
 	</c:if>

  <!-- Links -->
  
  <ul class="navbar-nav">
    <li class="nav-item"> 
      <a class="btn btn-warning btn-sm"  Style="margin-left: 15px;" href="UserLogIn.jsp"><i class="fa fa-home">   Home</i></a>
     </li> 
    
  
 <ul class="navbar-nav">
    <li class="nav-item"> 
      <a class="btn btn-warning btn-sm" Style="margin-left: 15px;" href="#" ><i class="fa fa-users">   About us</i></a>
     </li> 
    
    <li class="nav-item">
      <a class="btn btn-warning btn-sm" Style="margin-left: 15px;"href="#"><i class="fa fa-phone-square">   Contact us</i></a>
    </li>
    
    	<c:if test="${sessionScope.currentUser.getRole() == 'User'}">
      <li class="nav-item">
      <a class="btn btn-warning btn-sm" Style="margin-left: 15px;"href="ViewCart.jsp"><i class="fas fa-cart-plus">   Cart</i></a>
    </li>
    </c:if>
    
    
    <!-- DropDown -->
    
   <c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
    <li class="nav-item dropdown">
     <a class="btn btn-warning btn-sm dropdown-toggle" href="#" id="navbardrop" Style="margin-left:15px;" data-toggle="dropdown">
     <i class="fa fa-image">Image Bank </i>
     </a>
     
     <div class="dropdown-menu">
     
      <a class="dropdown-item" href="AddImageToBank.jsp">Add Images </a>
      <a class="dropdown-item" href="ViewImageBank.jsp">View Images Bank</a>
     
      </div>
    </li>
   </c:if>

    <!-- Dropdown -->
    
    <c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
    <li class="nav-item dropdown">
      <a class="btn btn-warning btn-sm dropdown-toggle" href="#" id="navbardrop" Style="margin-left:15px;" data-toggle="dropdown">
       <i class="fa fa-cubes">   Category</i>
      </a>
      
      <div class="dropdown-menu">
      
        <a class="dropdown-item" href="AddCategory.jsp">AddCategory</a>
        <a class="dropdown-item" href="ViewCategory.jsp">ViewCategory</a>
        
      </div>
    </li>
   </c:if>
    
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="btn btn-warning btn-sm dropdown-toggle" Style="margin-left:15px;" href="AddCategroy.jsp" id="navbardrop"  data-toggle="dropdown"  >
       <i class="fa fa-gift">   Product</i>
      </a>
      <div class="dropdown-menu">
     <c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
        <a class="dropdown-item" href="AddProduct.jsp">AddProduct</a>
        </c:if>
        <a class="dropdown-item" href="viewProduct.jsp">ViewProduct</a>
        
      </div>
    </li>
    
    <!-- Dropdown -->
    <c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
    <li class="nav-item dropdown">
      <a class="btn btn-warning btn-sm dropdown-toggle" Style="margin-left:15px;" href="#" id="navbardrop" data-toggle="dropdown">
      <i class="fa fa-user">   AddUser</i>
      </a>
      
      <div class="dropdown-menu">
      
        <a class="dropdown-item" href="Adduser.jsp">AddUser</a>
        <a class="dropdown-item" href="viewuser.jsp">ViewUser</a>
        
      </div>
    </li>
    </c:if>
    
  </ul>
</nav>
