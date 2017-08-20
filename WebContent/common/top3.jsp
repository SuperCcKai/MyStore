<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	
	function checkLogin(){
		if('${currentUser.userName}' == ''){
			alert("请先登录！");
		}else{
			window.location.href = "shopping_shoppingCartList.action";
		}
	}
</script>
</head>
<body>
<div class="container" style="margin-bottom: 25px;">
		<div class="row">
			<!-- Logo -->
			<div class="navbar-logo col-md-3 col-sm-12 col-xs-12">
				<a href="index.jsp"><img src="image/demo/logos/theme_logo.png" title="Your Store" alt="Your Store" /></a>
			</div>
			<!-- //end Logo -->

			<!-- Search -->
			<div id="sosearchpro" class="col-sm-7 search-pro">
				<form action="product.action" method="post">
					<div id="search0" class="search input-group">

						<input class="autosearch-input form-control" type="text" value="${s_product.name }" size="50" autocomplete="off" placeholder="搜索" id="txtSearch" name="s_product.name" onkeyup="" autocomplete="off">
						<span class="input-group-btn">
						<button type="submit" class="button-search btn btn-primary" name="submit_search"><i class="fa fa-search"></i></button>
						</span>
					</div>
					<input type="hidden" name="route" value="product/search" id="cmdSearch" />
				</form>
			</div>
			<!-- //end Search -->

			<!-- Secondary menu -->
			<div class="col-md-2 col-sm-5 col-xs-12 shopping_cart pull-right">
				<!--cart-->
				<div id="cart" class=" btn-group btn-shopping-cart">
					<div class="shopcart">
						<c:choose>
							<c:when test="${not empty currentUser }">
								<a href="shopping_shoppingCartList.action" class="top_cart dropdown-toggle">
									<div class="shopcart">
										<span class="handle pull-left"></span>
										<span class="title">我的购物车</span>
										<p class="text-shopping-cart cart-total-full">(${shoppingCart.shoppingCartItems==null?0:shoppingCart.shoppingCartItems.size() }件商品)</p>
									</div>
								</a>
							</c:when>
							<c:otherwise>
								<a href="javascript:checkLogin()" class="top_cart dropdown-toggle" >
									<div class="shopcart">
										<span class="handle pull-left"></span>
										<span class="title">我的购物车</span>
										<p class="text-shopping-cart cart-total-full"></p>
									</div>
								</a>
							</c:otherwise>
						</c:choose>	
				</div>
				<!--//cart-->
			</div>
		</div>

	</div>
</body>
</html>