<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="container">
		<div class="row">
			
			<div class="sidebar-menu col-md-3 col-sm-6 col-xs-12 ">
				<div class="responsive so-megamenu ">
					<div class="so-vertical-menu no-gutter compact-hidden">
						<nav class="navbar-default">	
							
							<div class="container-megamenu vertical open">
								<div id="menuHeading">
									<div class="megamenuToogle-wrapper">
										<div class="megamenuToogle-pattern">
											<div class="container">
												<div>
													<span></span>
													<span></span>
													<span></span>
												</div>
												全部分类							
												<i class="fa pull-right arrow-circle fa-chevron-circle-up"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="navbar-header">
									<button type="button" id="show-verticalmenu" data-toggle="collapse" class="navbar-toggle fa fa-list-alt">
										
									</button>
									All Categories		
								</div>
								<div class="vertical-wrapper" >
									<span id="remove-verticalmenu" class="fa fa-times"></span>
									<div class="megamenu-pattern">
										<div class="container">
											<ul class="megamenu">
												<c:forEach var="bigType" items="${bigTypeList }">
													<li class="item-vertical style1 with-sub-menu hover">
														<p class="close-menu"></p>
														<a href="product.action?s_product.bigType.id=${bigType.id }" class="clearfix">
															<span>${bigType.name }</span>
															<b class="caret"></b>
														</a>
														<div class="sub-menu" data-subwidth="30" style="width: 270px; display: none; right: 0px;">
															<div class="content" style="display: none;">
																<div class="row">
																	<div class="col-sm-12">
																		<div class="row">
																			<div class="col-sm-12 hover-menu">
																				<div class="menu">
																					<ul>
																						<c:forEach var="smallType" items="${bigType.smallTypeList }">
																							<li>
																								<a href="product.action?s_product.smallType.id=${smallType.id }" class="main-menu">${smallType.name }</a>
																							</li>
																						</c:forEach>
																					</ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</nav>
					</div>
				</div>
			</div>
			
			<!-- Main menu -->
			<div class="megamenu-hori header-bottom-right  col-md-9 col-sm-6 col-xs-12 ">
				<div class="responsive so-megamenu ">
	<nav class="navbar-default">
		<div class=" container-megamenu  horizontal">
			<div class="navbar-header">
				<button type="button" id="show-megamenu" data-toggle="collapse" class="navbar-toggle">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				Navigation		
			</div>
			
			<div class="megamenu-wrapper">
				<span id="remove-megamenu" class="fa fa-times"></span>
				<div class="megamenu-pattern">
					<div class="container">
						<ul class="megamenu " data-transition="slide" data-animationtime="250">
							<li class=" hover">
								
								<a href="index.jsp">首页 <b class="caret"></b></a>
								
							</li>
							
							<!-- <li class="with-sub-menu hover">
								<p class="close-menu"></p>
								<a href="#" class="clearfix">
									<strong>图书评选</strong>
									<span class="label"> Hot</span>
									<b class="caret"></b>
								</a>
								
							</li> -->
							
							
							<li class="home hover">
								<p class="close-menu"></p>
								<a href="comment_showComment.action" class="clearfix">
									<strong>留言板</strong>
									<b class="caret"></b>
								</a>
								
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
</div>
									</div>
			<!-- //end Main menu -->
			
		</div>
	</div>
</body>
</html>