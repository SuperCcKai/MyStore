<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Basic page needs
	============================================ -->
	<title>Home</title>
	<meta charset="utf-8">
    <meta name="keywords" content="" />
    <meta name="author" content="Magentech">
    <meta name="robots" content="index, follow" />
   
	<!-- Mobile specific metas
	============================================ -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
	<!-- Favicon
	============================================ -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="ico/favicon.png">
	
	<!-- Google web fonts
	============================================ -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
    <!-- Libs CSS
	============================================ -->
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
	<link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
	<link href="css/themecss/lib.css" rel="stylesheet">
	<link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet">
	
	<!-- Theme CSS
	============================================ -->
   	<link href="css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="css/themecss/so-categories.css" rel="stylesheet">
	<link href="css/themecss/so-listing-tabs.css" rel="stylesheet">
	<link id="color_scheme" href="css/theme.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<style type="text/css">
	.common-home.res.layout-home1 #wrapper .footer-container .footer-top .container.content .row .col-sm-12.collapsed-block.footer-links .module.clearfix .modcontent .footer-directory-title .footer-directory li a {
	text-align: center;
}
    .footer-container .footer-top .container.content .row .col-sm-12.collapsed-block.footer-links .module.clearfix .modcontent .footer-directory-title .footer-directory li a {
	text-align: center;
}
    </style>
</head>
<body class="common-home res layout-home1">
	<div id="wrapper" class="wrapper-full banners-effect-7">
		<header id="header" class=" variantleft type_1"> 
			<div class="header-top compact-hidden">
				<jsp:include page="common/top2.jsp" />
			</div>
			<div class="header-center left" style="padding-bottom: 0px;">
				<jsp:include page="common/top3.jsp" />
			</div>
			<div class="header-bottom">
				<jsp:include page="common/top4.jsp" />
			</div>
		</header>
		<section class="so-spotlight1 ">
			 <jsp:include page="common/spotlight.jsp" />
		</section>
		<div class="main-container container">
			
			<div class="row">
				<div id="content" class="col-sm-12">
					
					<div class="module tab-slider titleLine">
						<h3 class="modtitle">今日特价</h3>
						<jsp:include page="common/tscp.jsp" />
					</div>
					<div class="module ">
						<div class="modcontent clearfix">
							<div class="banner-wraps ">
								<div class="m-banner row">
									<div class="banner htmlconten1 col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="banners">
											<div>
												<img src="image/demo/cms/4.png" alt="banner1">
											</div>
										</div>
									</div>
									<div class="htmlconten2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="module banners">
												<div>
													<img src="image/demo/cms/5.png" alt="banner1">
												</div>
										</div>
											
										<div class="banners">
											<div>
												<img src="image/demo/cms/6.png" alt="banner1">
											</div>
										</div>
										
									</div>
									<div class="banner htmlconten3 hidden-sm col-lg-4 col-md-4 col-sm-6 col-xs-12">
										<div class="banners">
											<div>
												<img src="image/demo/cms/7.png" alt="banner1">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="module tab-slider titleLine">
						<h3 class="modtitle">热卖推荐</h3>
						<jsp:include page="common/xpsj.jsp" />
					</div>
				</div>
			</div>
		</div>
		<section class="so-spotlight3">
			<div class="container">
				<div class="row">
					<div id="so_categories_173761471880018" class="so-categories module titleLine preset01-4 preset02-3 preset03-3 preset04-1 preset05-1">
						<h3 class="modtitle">最近浏览</h3>
						<jsp:include page="common/rmss.jsp" />
					</div>
				</div>
			</div>
		</section>
		<jsp:include page="common/footer2.jsp"/>

    </div>

	<link rel='stylesheet' property='stylesheet'  href='css/themecss/cpanel.css' type='text/css' media='all' />
		
	<!-- Preloading Screen -->
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	 </div>
	<!-- End Preloading Screen -->
		
	<!-- Include Libs & Plugins
	============================================ -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="js/themejs/libs.js"></script>
	<script type="text/javascript" src="js/unveil/jquery.unveil.js"></script>
	<script type="text/javascript" src="js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript" src="js/datetimepicker/moment.js"></script>
	<script type="text/javascript" src="js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui/jquery-ui.min.js"></script>
	
	
	<!-- Theme files
	============================================ -->
	<script type="text/javascript" src="js/themejs/application.js"></script>
	<script type="text/javascript" src="js/themejs/toppanel.js"></script>
	<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
	<script type="text/javascript" src="js/themejs/addtocart.js"></script>	
	<script type="text/javascript" src="js/themejs/cpanel.js"></script>
</body>
</html>