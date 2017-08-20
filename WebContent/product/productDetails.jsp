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
	function addShoppingCart(productId){
		if('${currentUser.userName}' == ''){
			alert("请先登录，在购物!");
		}else{
			$.post("shopping_addShoppingCartItem.action", {productId:productId},
					function(result){
						var result = eval('('+result+')');
						if(result.success){
							alert("已成功添加到购物车!");
							location.reload();
						}else{
							alert(result.error);
						}
				}		
			);
		}
	}
	
	function goBuy(productId){
		if('${currentUser.userName}' == ''){
			alert("请先登录，然后购物！");
		}else{
			window.location.href = "shopping_buy.action?productId=" + productId;
		}
	}
</script>
</head>
<body>
	<div class="row">
		<!-- Middle Part Start -->
		<div id="content" class="col-md-12 col-sm-12">

			<div class="product-view row">
				<div class="left-content-product col-lg-10 col-xs-12"
					style="margin-left: 285px;">
					<div class="row" style="width: 925px;">
						<div
							class="content-product-left class-honizol col-sm-6 col-xs-12 "
							style="height: 430px;">
							<img itemprop="image" class="product-image-zoom"
								src="${product.proPic}">
						</div>

						<div class="content-product-right col-sm-6 col-xs-12"
							style="margin-top: 36px;">
							<div class="title-product">
								<h1>${product.name}</h1>
							</div>
							<div class="box-review form-group" style="margin-top: 15px;">


								<div class="product-label form-group">
									<div class="product_page_price price" itemprop="offerDetails"
										itemscope="" itemtype="http://data-vocabulary.org/Offer">
										<p>
											<span class="price-new" itemprop="price">&nbsp;</span><span
												class="jiage" itemprop="price">商城价 &nbsp; &nbsp; </span><span
												class="price-new" itemprop="price">￥${product.price}</span>
									</div>
									<div class="stock"></div>
								</div>

								<div class="product-box-desc">
									<div class="inner-box-desc">
										<div class="price-tax">
											<p>
												<span>库存：</span> <span class="huod">${product.stock}
												</span>
											</p>
										</div>
										<div class="reward"></div>
										<div class="brand"></div>
										<div class="reward"></div>
									</div>
								</div>


								<div id="product">
									<div class="box-checkbox form-group required">
										<div id="input-option232"></div>
									</div>

									<div class="form-group box-info-product">
										<div class="cart">
											<input type="button" data-toggle="tooltip" title=""
												value="购买" data-loading-text="Loading..." id="button-cart" name="button"
												class="btn btn-mega btn-lg" onclick="goBuy(${product.id });"
												data-original-title="购买"> 
												<input type="button"
												data-toggle="tooltip" title="" value="放入购物车"
												data-loading-text="Loading..." id="button-cart"
												class="btn btn-mega btn-lg" onclick="addShoppingCart(${product.id });"
												data-original-title="放入购物车">
										</div>
									</div>

								</div>
								<!-- end box info product -->

							</div>
						</div>
					</div>

				</div>

				<!-- Product Tabs -->
				<div class="producttab ">
					<div class="tabsslider  vertical-tabs col-xs-12">
						<ul class="nav nav-tabs col-lg-2 col-sm-3">
							<li class="active"><a data-toggle="tab" href="#tab-1">宝贝详情</a></li>

						</ul>
						<div class="tab-content col-lg-10 col-sm-9 col-xs-12">
							<div id="tab-1" class="tab-pane fade active in">
								${product.description}</div>
						</div>
					</div>
				</div>
				<!-- //Product Tabs -->

				<!-- Related Products -->
				<div class="related titleLine products-list grid module ">
					<h3 class="modtitle">看了又看</h3>
					<div class="releate-products ">
						<c:forEach var="cp" items="${currentBrowse }">
							<div class="product-layout">
								<div class="product-item-container">
									<div class="left-block">
										<div class="product-image-container second_img ">
											<img src="${cp.proPic }" title="${cp.proPic }"
												class="img-responsive" />
										</div>
										<!-- Sale Label -->
										<span class="label label-sale">${cp.name }</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>