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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="<c:url value="/resources/menu.css" />">
<link rel="stylesheet" href="<c:url value="/resources/main.css" />">

<title>SHOPPING CART</title>


</head>
<header></header>
<body>
<div data-role="page">

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Shopping Cart</a>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Link<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a>
         <li><c:choose>
						<c:when test="${empty loggedInUser}">
							<td><a href="login1">LOGIN</a></td>
							<td><a href="register">REGISTER</a></td>
						</c:when>
						<c:when test="${not empty loggedInUser}">
							<td>Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout"> logout</a></td>
						</c:when>
		</c:choose>

</li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>  
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
	
				
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 25%;
      margin: auto;
  }
  </style>
<table>  

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\samsunggalaxys7edge.jpg" alt="SamsungGalaxys7edge" width="460" height="345">
        <div class="carousel-caption">
          <h3>SamsungGalaxys7edge</h3>
          <p>The best product that we can get ever</p>
        </div>
      </div>

      <div class="item">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\iphone6.jpg" alt="Iphonr6s" width="460" height="345">
        <div class="carousel-caption">
          <h3>Iphone6s</h3>
          <p>Now we can shoot live images also with this phone</p>
        </div>
      </div>
    
      <div class="item">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\panasonic_eluga_note.jpg" alt="PanasonicEluga" width="460" height="345">
        <div class="carousel-caption">
          <h3>Panasonic Eluga</h3>
          <p>it gives large screen with high battery power.</p>
        </div>
      </div>

      <div class="item">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\vivo_x7_plus.jpg" alt="VivoX7plus" width="460" height="345">
        <div class="carousel-caption">
          <h3>Vivox7plus</h3>
          <p>Huge camera clearity.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\samsunggalaxys7edge.jpg" alt="SamsungGalaxys7edge" width="460" height="345">
        <div class="carousel-caption">
          <h3>SamsungGalaxys7edge</h3>
          <p>The best product that we can get ever</p>
        </div>
      </div>

      <div class="item">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\iphone6.jpg" alt="Iphonr6s" width="460" height="345">
        <div class="carousel-caption">
          <h3>Iphone6s</h3>
          <p>Now we can shoot live images also with this phone</p>
        </div>
      </div>
    
      <div class="item">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\panasonic_eluga_note.jpg" alt="PanasonicEluga" width="460" height="345">
        <div class="carousel-caption">
          <h3>Panasonic Eluga</h3>
          <p>it gives large screen with high battery power.</p>
        </div>
      </div>

      <div class="item">
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\vivo_x7_plus.jpg" alt="VivoX7plus" width="460" height="345">
        <div class="carousel-caption">
          <h3>Vivox7plus</h3>
          <p>Huge camera clearity.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<div class="container">
  <h2>Image Gallery</h2>
  <p> Click on the images to see it in full size:</p>            
  <div class="row">
    <div class="col-md-4">
      <a href="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\vivo_x7.jpg" class="thumbnail">
        <p>Vivo_x7</p>    
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\vivo_x7.jpg" alt="Pulpit Rock" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\samsunggalaxys7edge.jpg" class="thumbnail">
        <p>"The latest samsung galaxy smart phone".</p>
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\samsunggalaxys7edge.jpg" alt="Moustiers Sainte Marie" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\karbonn_a91_storm.jpg" class="thumbnail">
        <p>The Cinque Terre: A rugged portion of coast in the Liguria region of Italy.</p>      
        <img src="A:\SagarWorkspace\ShoppingCartFrontend\src\main\resources\images\karbonn_a91_storm.jpg" alt="Cinque Terre" style="width:150px;height:150px">
      </a>
    </div>
  </div>
</div>

		
		<div data-role="main" class="ui-content">



			<hr color="red" size="5">

			<ul id="menu">
				<c:if test="${not empty categoryList}">
					<c:forEach items="${categoryList}" var="category">
						<li><a href=${category.name}>${category.name}</a>
							<ul>
								<c:forEach items="${Category.products}" var="product">

									<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

								</c:forEach>

							</ul></li>
					</c:forEach>
				</c:if>

			</ul>
			
			<hr color="red" size="5">
			
			
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
</body>
</html>