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

<!-- Header Top -->
<div class="header-top compact-hidden">
	<div class="wrap-categories">
		<div class="cat-wrap theme3">
		
			<c:forEach var="cp" items="${currentBrowse }">
			<div class="content-box">
				<div class="image-cat">
					<a href="product_showProduct.action?productId=${cp.id }" title="Automotive" target="_blank">
						<img  src="${cp.proPic }" title="${cp.name }" alt="${cp.name }"> 
					</a> 
				</div>
				<div class="inner">
					<div class="title-cat"> <a href="product_showProduct.action?productId=${cp.id }" title="${cp.name } " target="_blank">${fn:substring(cp.name,0,15)}${fn:length(cp.name)>15?'...':''}</a> </div>
					<!-- <div class="child-cat">
						<div class="child-cat-title"> <a title="More Car Accessories" href="#" target="_blank">More Car Accessories		</a> </div>
						<div class="child-cat-title"> <a title="Car Alarms and Security" href="#" target="_blank">Car Alarms and Security		</a> </div>
						<div class="child-cat-title"> <a title="Car Audio &amp; Speakers" href="#" target="_blank">Car Audio &amp; Speakers		</a> </div>
						<div class="child-cat-title"> <a title="Gadgets &amp; Auto Parts" href="#" target="_blank">Gadgets &amp; Auto Parts	</a> </div>
					</div> -->
				</div>
			</div>
			<div class="clr1"></div>
			</c:forEach>
		</div>
	</div>
</body>
</html>