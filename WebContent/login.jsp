<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Basic page needs
	============================================ -->
	<title></title>
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
<script type="text/javascript">
	function loadimage(){
		document.getElementById("randImage").src = "image.jsp?"+Math.random();
	}
	
	function checkForm(){
		 var userName=$("#userName").val();
		 var password=$("#password").val();
		 if(userName.trim()==""){
			 $("#error").html("用户名不能为空！");
			 return false;
		 }
		 if(password==""){
			 $("#error").html("密码不能为空！");
			 return false;
		 }
		 return true;
	}
</script>
</head>
<body class="res layout-subpage">

     


    <div id="wrapper" class="wrapper-full ">
	<!-- Header Container  -->
	<header id="header" class=" variantleft type_1">
		<!-- Header Top -->
		<div class="header-top">
			<jsp:include page="common/top2.jsp" />
		</div>
		<!-- //Header Top -->

		<!-- Header center -->
		<div class="header-center left" style="padding-bottom: 0px;">
			<jsp:include page="common/top3.jsp" />
		</div>
		<div class="header-bottom">
			<jsp:include page="common/top4.jsp" />
		</div>
	</header>
	<!-- //Header Container  -->
	<!-- Main Container  -->
	<div class="main-container container">
		<ul class="breadcrumb">
			<li>首页</li>
			<li>账户</li>
			<li>登录</li>
		</ul>
		
		<div class="row">
			<div id="content" class="col-sm-12">
				<div class="page-login">
				
					<div class="account-border">
						<div class="row">
							<div class="col-sm-6 new-customer">
								<div class="well">
									<h2><i class="fa fa-file-o" aria-hidden="true"></i> 新用户									</h2>
									<p>新用户，您好！点击&ldquo;继续&rdquo;, 将进入注册页面 ，在相应提示处输入您的用户名、邮箱地址、密码、确认密码等点击&ldquo;注册&rdquo;即可。 </p>
								</div>
								<div class="bottom-form">
									<a href="register.jsp" class="btn btn-default pull-right">继续</a>
								</div>
							</div>
							
							<form id="loginForm" method="post" action="user_login.action" onsubmit="return checkForm()">
								<div class="col-sm-6 customer-login">
									<div class="well">
										<h2><i class="fa fa-file-text-o" aria-hidden="true"></i> 已注册</h2>
										<p>&nbsp;</p>
										<div class="form-group">
											<label class="control-label " for="input-email">用户名
											  <input type="text" name="user.userName" id="userName" class="form-control" value="${user.userName }"/>
											</label>
										</div>
										<div class="form-group">
											<label class="control-label " for="input-password">密码</label><input type="password" name="user.password" value="${user.password }" id="password" class="form-control" />
										</div>
									</div>
									<div class="bottom-form">
										<input type="submit" name="submit" value="登录" class="btn btn-default pull-right" />
										&nbsp;&nbsp;&nbsp;&nbsp;<font id="error"  color="red">${error }</font>
									</div>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<!-- //Main Container -->
	

	<!-- Footer Container -->
	<jsp:include page="common/footer2.jsp"/>
	<!-- //end Footer Container -->

    </div>
	
	
	
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
	
	
	<script type="text/javascript" src="js/themejs/so_megamenu2.js"></script>
	<script type="text/javascript" src="js/themejs/addtocart.js"></script>
	<script type="text/javascript" src="js/themejs/application.js"></script>
	
	
	
</body>
</html>