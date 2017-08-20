<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="so_listing_tabs_1" class="so-listing-tabs first-load module">
	<div class="loadeding"></div>
	<div class="ltabs-wrap">
		<div class="ltabs-tabs-container" data-delay="300" data-duration="600" data-effect="starwars" data-ajaxurl="#" data-type_source="0">
			<!--Begin Tabs-->
			<div class="ltabs-tabs-wrap"> 
			<span class="ltabs-tab-selected">Jewelry &amp; Watches	</span> <span class="ltabs-tab-arrow">▼</span>
				<div class="item-sub-cat">
					<!-- <ul class="ltabs-tabs cf">
						<li class="ltabs-tab tab-sel" data-category-id="20" data-active-content=".items-category-20"> <span class="ltabs-tab-label">Jewelry &amp; Watches						</span> </li>
						<li class="ltabs-tab " data-category-id="18" data-active-content=".items-category-18"> <span class="ltabs-tab-label">Electronics		</span> </li>
						<li class="ltabs-tab " data-category-id="25" data-active-content=".items-category-25"> <span class="ltabs-tab-label">Sports &amp; Outdoors	</span> </li>
					</ul> -->
				</div>
			</div>
			<!-- End Tabs-->
		</div>
		<div class="ltabs-items-container">
			<!--Begin Items-->
			<div class="ltabs-items ltabs-items-selected items-category-20 grid" data-total="10">
				<div class="ltabs-items-inner ltabs-slider ">
				
					<c:forEach var="spProduct" items="${specialPriceProductList }">
					<div class="ltabs-item product-layout">
						<div class="product-item-container">
							<div class="left-block">
								<div class="product-image-container second_img ">
									<img src="${spProduct.proPic }"  alt="Apple Cinema 30&quot;" class="img-responsive" />
									<img src="${spProduct.proPic }"  alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
								</div>
							</div>
							<div class="right-block">
								<div class="caption">
									<h4><a title="${spProduct.name }" href="product_showProduct.action?productId=${spProduct.id }" target="_blank">${fn:substring(spProduct.name,0,15)}${fn:length(spProduct.name)>15?'...':''}</a></h4>		
									<!-- <div class="ratings">
										<div class="rating-box">
											<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
											<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
											<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
											<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
											<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
										</div>
									</div> -->
														
									<div class="price">
										<span class="price-new">¥${spProduct.price }</span> 
									</div>
								</div>
							</div><!-- right block -->
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--End Items-->
	</div>
</div>
</body>
</html>