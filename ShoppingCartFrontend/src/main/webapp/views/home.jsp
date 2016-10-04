<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>


<link rel="stylesheet" href="<c:url value="/resources/menu.css" />">
<link rel="stylesheet" href="<c:url value="/resources/main.css" />">


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>Shopping Cart</title>

</head>
<header></header>
<body>
	<div data-role="page">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">WatchCart</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Women <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Type of Belt</a></li>
							<li><a href="#">Color</a></li>
							<li><a href="#">Size</a></li>
						</ul></li>
					<li><a href="#">Men</a></li>
					<li><a href="#">Wall Watch</a></li>
				</ul>
			</div>
		</nav>

<h1>
		<center id="heading">  Welcome to shopping cart</center>
	</h1>

		<tr>
			<hr color="green" size="20">	
			<c:choose>
				<c:when test="${empty loggedInUser}">
					<td align="left">Existing user<a href="loginHere"> Login
							here</a></td><br>
					<td align="center">New user<a href="registerHere">
							Register here</a></td><br>
					<td align="center"><a href="notification"> Notification</a></td>
					
				</c:when>
				<c:when test="${not empty loggedInUser}">
					<td>Welcome ${loggedInUser},</td>
					<td align="right"><a href="logout"> logout</a></td>
					<td align="center"><a href="myCart"> MyCart</a></td>
				</c:when>

			</c:choose>
			<h2 style="background-color: green">
			<marquee behavior=alternate direction=left>
			<font color="white" face="Impact">Watches</font>
		</marquee>
			</h2>

		</tr>
		
		
			<ul>
				<c:if test="${not empty categoryList}">
					<c:forEach items="${categoryList}" var="category">
						<li><a href=${category.name}>${category.name}</a>
							<ul>
								<c:forEach items="${category.products}" var="product">

									<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

								</c:forEach>

							</ul></li>
					</c:forEach>
				</c:if>

			</ul> 
		
		
		<div data-role="page">
			<h1>Welcome to Shopping Cart</h1>
			<table width="100%">

				<tr>
					<c:if test="${loggedOut==true}">
						<td>${logoutMessage}</td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${not empty cartSize}">
						<td align="right"><a href="myCart"> My Cart </a>( ${cartSize}
							)</td>
					</c:if>
				</tr>
			</table>
		</div>

		<div data-role="main" class="ui-content">

			<h2>New In</h2>
			<table>
				<tr>
					<td><a href="#">New Arrival <span class="badge">5</span></a>
					<td>
					<td><a href="#">Updates <span class="badge">10</span></a>
					<td>
					<td><a href="#">Comments <span class="badge">2</span></a></td>
			</table>
			<table border=1>
				<tr>
					<td>

						<h2>Apple</h2>
						<p>Watches:</p> <img src="D:\NIIT\workspace\apple-watch.jpg"
						class="img-circle" alt="Cinque Terre">

					</td>


					<td>

						<h2>Fastrack</h2>
						<p>Watches:</p> <img src="D:\NIIT\workspace\fasttrack-watch.jpg"
						class="img-circle" alt="Cinque Terre">

					</td>
				</tr>
			</table>




			<br> <br> <br>
			<div>
				<c:if test="${!empty selectedProduct.name}">
					<table>
						<tr>
							<th align="left" width="80">Product ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Product Description</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="200">Product Category</th>
							<th align="left" width="200">Product Supplier</th>

						</tr>
						<tr>
							<td align="left">${selectedProduct.id}</td>
							<td align="left">${selectedProduct.name}</td>
							<td align="left">${selectedProduct.description}</td>
							<td align="left">${selectedProduct.price}</td>
							<td align="left">${selectedProduct.category.name}</td>
							<td align="left">${selectedProduct.supplier.name}</td>
						</tr>
					</table>
				</c:if>
			</div>

			<div id="notification">
				<c:if test="${isUserClickedNotification==true}">
					<%@ include file="/views/notification.jsp"%>

				</c:if>
			</div>


			<div id="registerHere">
				<c:if test="${isUserClickedRegisterHere==true}">
					<%@ include file="/views/register.jsp"%>

				</c:if>
			</div>

			<div id="loginHere">
				<c:if
					test="${isUserClickedLoginHere==true }">
					<div id="error">${errorMessage}</div>
					<%@ include file="/views/login.jsp"%>

				</c:if>
			</div>

			<div id="admin">

				<c:if test="${isAdmin==true}">

					<%@ include file="/views/adminHome.jsp"%>

				</c:if>
				<div id="categories">
					<c:if test="${isAdminClickedCategories==true}">
						<%@ include file="/views/adminHome.jsp"%>
						<%@ include file="/views/category.jsp"%>
					</c:if>
				</div>

				<div id="products">
					<c:if test="${isAdminClickedProducts==true}">
						<%@ include file="/views/adminHome.jsp"%>
						<%@ include file="/views/product.jsp"%>
					</c:if>
				</div>

				<div id="suppliers">
					<c:if test="${isAdminClickedSuppliers==true}">
						<%@ include file="/views/adminHome.jsp"%>
						<%@ include file="/views/supplier.jsp"%>
					</c:if>
				</div>

			</div>

			<div id="displayCart">
				<c:if test="${displayCart==true}">

					<table>
						<tr>
							<th align="left" width="80">Cart ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Quantity</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="60">Delete from Cart</th>

						</tr>
						<c:forEach items="${cartList}" var="cart">
							<tr>
								<td align="left">${cart.id}</td>
								<td align="left">${cart.productName}</td>
								<td align="left">${cart.quantity}</td>
								<td align="left">${cart.price}</td>
								<td align="left"><a
									href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
								<td align="left"><a href="<c:url value='pay/${cart.id}' />">
										Proceed</a></td>
							</tr>
						</c:forEach>

					</table>

					<h2>Total cost : ${totalAmount}</h2>
					<%-- <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  --%>
					<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a>
				</c:if>

			</div>
		</div>
		<div data-role="footer" data-position="fixed">
			<h1>&copy; 2016 - Shopping Cart</h1>
		</div>
	</div>
	</div>
</body>
</html>