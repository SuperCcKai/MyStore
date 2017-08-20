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
<body>

	<div class="row" style="margin-left: 315px;">
		<div class="col-sm-12">

			<div class="module tab-slider titleLine">
				<div class="so-listing-tabs first-load module">
					<div class="loadeding"></div>
					<div class="ltabs-wrap">
						<div class="ltabs-items-container">
							<!--Begin Items-->
							<div class="ltabs-items ltabs-items-selected items-category-20 grid" data-total="10">
								<div class="ltabs-items-inner ltabs-slider  owl2-carousel owl2-theme owl2-loaded">
									<div class="owl2-stage-outer">
										<div class="owl2-stage" style="width: 865px;">
										<c:forEach var="p" items="${productList }">
											<div class="owl2-item active" style="width: 191.25px; margin-right: 25px;">
												<div class="ltabs-item product-layout">
													<div class="product-item-container">
														<div class="left-block">
															<div class="product-image-container second_img ">
																<img src="${p.proPic }"
																	alt="Apple Cinema 30&quot;" class="img-responsive">
																<img src="${p.proPic }"
																	alt="Apple Cinema 30&quot;"
																	class="img_0 img-responsive">
															</div>
														</div>
														<div class="right-block">
															<div class="caption">
																<h5>
																	<a title="${p.name }" href="product_showProduct.action?productId=${p.id }">${fn:substring(p.name,0,12)}${fn:length(p.name)>12?'...':''}</a>
																</h5>

																<div class="price">
																	<span class="price-new">¥${p.price }</span>
																</div>
															</div>
														</div>
														<!-- right block -->
													</div>
												</div>
											</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End Items-->
						<div class="pager">
							<ul class="clearfix">${pageCode }
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>