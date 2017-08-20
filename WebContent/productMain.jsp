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
<body class="res layout-subpage">

	<div id="wrapper" class="wrapper-full ">
		<!-- Header Container  -->
		<header id="header" class=" variantleft type_1"> <!-- Header Top -->
		<div class="header-top">
			<jsp:include page="common/top2.jsp" />
		</div>
		<!-- //Header Top --> <!-- Header center -->
		<div class="header-center left" style="padding-bottom: 0px;">
			<jsp:include page="common/top3.jsp" />
		</div>
		<div class="header-bottom">
			<jsp:include page="common/top4.jsp" />
		</div>
		</header>
		<div class="main-container container">
			<ul class="breadcrumb" style="margin-left: 300px;">
				<li>${navCode }</li>
			</ul>
			<jsp:include page="${mainPage }" />

			<!-- //Main Container -->


		</div>
		<!-- Footer Container -->
			<jsp:include page="common/footer2.jsp" />
			<!-- //end Footer Container -->

	</div>

	<link rel='stylesheet' property='stylesheet'
		href='css/themecss/cpanel.css' type='text/css' media='all' />

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
	<script type="text/javascript"
		src="js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript" src="js/datetimepicker/moment.js"></script>
	<script type="text/javascript"
		src="js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
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