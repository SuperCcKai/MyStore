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
<div id="so_listing_tabs_2" class="so-listing-tabs first-load module">
		<div class="loadeding"></div>
		<div class="ltabs-wrap ">
			<div class="ltabs-tabs-container" data-delay="300" data-duration="600" data-effect="starwars" data-ajaxurl="#" data-type_source="0">
				<!--Begin Tabs-->
				<div class="ltabs-tabs-wrap"> 
				<span class="ltabs-tab-selected">Jewelry &amp; Watches	</span> <span class="ltabs-tab-arrow">▼</span>
					<div class="item-sub-cat">
					</div>
				</div>
				<!-- End Tabs-->
			</div>
			<div class="ltabs-items-container">
				<!--Begin Items-->
				<div class="ltabs-items  ltabs-items-selected items-category-1 grid" data-total="10">
					<div class="ltabs-items-inner ltabs-slider ">
						<c:forEach var="hProduct" items="${hotProductList }">
							<div class="ltabs-item product-layout">
								<div class="product-item-container">
									<div class="left-block">
										<div class="product-image-container second_img ">
											<img src="${hProduct.proPic }"  alt="Apple Cinema 30&quot;" class="img-responsive" />
											<img src="${hProduct.proPic }"  alt="Apple Cinema 30&quot;" class="img_0 img-responsive" />
										</div>
									</div>
									<div class="right-block">
										<div class="caption">
											<h4><a title="${hProduct.name }" href="product_showProduct.action?productId=${hProduct.id }" target="_blank">${fn:substring(hProduct.name,0,15)}${fn:length(hProduct.name)>15?'...':''}</a></h4>		
											<div class="price">
												<span class="price-new">¥${hProduct.price }</span> 
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			<!--End Items-->
		</div>
		</div>
	</div>
</body>
</html>