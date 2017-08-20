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

	function checkForm(){
		var userName = $("#userName").val();
		var email = $("#email").val();
		var password = $("#password").val();
		var rePassWord = $("#rePassWord").val();
		var mobile = $("#mobile").val();
		var address = $("#address").val();
		
		if(userName.trim()==""){
			$("#error").html("用户名不能为空！");
			return false;
		}
		
		if(email.trim()==""){
			$("#error").html("邮箱不能为空！");
			return false;
		}
		
		if(address.trim()==""){
			$("#error").html("收货地址不能为空！");
			return false;
		}
		
		if(mobile.trim()==""){
			$("#error").html("手机号码不能为空！");
			return false;
		}
		
		if(password==""){
			$("#error").html("密码不能为空！");
			return false;
		}
		
		if(rePassWord==""){
			$("#error").html("确认密码不能为空！");
			return false;
		}
		
		if(rePassWord != password){
			$("#error").html("确认密码和密码不一致，请重新输入！");
			return false;
		}
		return true;
	}

	function checkUserName(userName){
		if($("#userName").val() == ""){
			$("#error").html("用户名不能为空！");
			$("#userName").focus();
			return;
		}
		$.post("user_existUserWithUserName.action", {userName:userName}, 
				function(result){
					var result = eval('('+result+')');
					if(result.exist){
						$("#error").html("用户名已存在，请重新输入！");
						$("#userName").focus();
					}else{
						$("#error").html("");
					}
				}
		);
	}
</script>
	
</head>
<body class="res layout-subpage">

     


    <div id="wrapper" class="wrapper-full ">
	<!-- Header Container  -->
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
	<!-- //Header Container  -->
	<!-- Main Container  -->
	<div class="main-container container">
		<ul class="breadcrumb">
			<li>首页</li>
			<li>账号</li>
			<li>注册</li>
		</ul>
		
		<div class="row">
		  <div id="content" class="col-sm-12">
		    <h2 class="title">注册</h2>
		    <p>如果您已经注册过，请进入<a href="login.jsp">登录</a>页面 <a href="#">l</a></p>
		    <form id="regForm" method="post" action="user_register.action" onsubmit="return checkForm()" class="form-horizontal account-register clearfix">
		      <fieldset id="account">
		        <legend>个人信息</legend>
		        <div class="form-group required" style="display: none;">
		          <label class="col-sm-2 control-label">Customer Group</label>
		          <div class="col-sm-10">
		            <div class="radio">
		              <label>
		                <input type="radio" name="customer_group_id" value="1" checked="checked">
		                Default </label>
	                </div>
	              </div>
	            </div>
		        <div class="form-group required">
		          <label class="col-sm-2 control-label" for="input-firstname">用户名</label>
		          <div class="col-sm-10">
		            <input type="text" name="user.userName" value="" placeholder="用户名" id="userName" class="form-control" onblur="checkUserName(this.value)">
	              </div>
	            </div>
		        
		        <div class="form-group required">
		          <label class="col-sm-2 control-label" for="input-email">邮箱</label>
		          <div class="col-sm-10">
		            <input type="text" name="user.email" value="" placeholder="邮箱" id="email" class="form-control">
	              </div>
	            </div>
		        <div class="form-group">
		          <label class="col-sm-2 control-label" for="input-email">身份证号</label>
		          <div class="col-sm-10">
		            <input type="text" name="user.dentityCode" value="" placeholder="身份证号" id="dentityCode" class="form-control">
	              </div>
	            </div>
		        <div class="form-group">
		          <label class="col-sm-2 control-label" for="input-email">出生日期</label>
		          <div class="col-sm-10" style=" width: 216px;">
		            <input type="text" name="user.birthday" id="birthday" class="form-control" onClick="WdatePicker()">
	              </div>
	            </div>
		        <div class="form-group required">
		          <label class="col-sm-2 control-label" for="input-telephone">性别</label>
		          <div class="col-sm-10" style="padding-top: 7px;margin-bottom: 0;">
		            <td>
					    <input type="radio"   name="user.sex" value="男" checked="checked"/>男&nbsp;&nbsp;
					    <input type ="radio" name="user.sex" value="女"/>女					    					    
					    </td>
	              </div>
	            </div>
		        <div class="form-group">
		          <div class="col-sm-10"></div>
	            </div>
	          </fieldset>
		      <fieldset>
		        <legend>地址</legend>
		        <div class="form-group">
		          <div class="col-sm-10"></div>
	            </div>
		        <div class="form-group required">
		          <label class="col-sm-2 control-label" for="input-address-1">收获地址</label>
		          <div class="col-sm-10">
		            <input type="text" name="user.address" value="" placeholder="收获地址" id="address" class="form-control">
	              </div>
	            </div>
	            <div class="form-group required">
		          <label class="col-sm-2 control-label" for="input-telephone">电话</label>
		          <div class="col-sm-10">
		            <input type="text" name="user.mobile" value="" placeholder="电话" id="mobile" class="form-control">
	              </div>
	            </div>
		       
		        <div class="form-group required"></div>
	          </fieldset>
		      <fieldset>
		        <legend>密码</legend>
		        <div class="form-group required">
		          <label class="col-sm-2 control-label" for="input-password">密码</label>
		          <div class="col-sm-10">
		            <input type="password" name="user.password" value="" placeholder="密码" id="password" class="form-control">
	              </div>
	            </div>
		        <div class="form-group required">
		          <label class="col-sm-2 control-label" for="input-confirm">密码确认</label>
		          <div class="col-sm-10">
		            <input type="password" name="rePassWord" value="" placeholder="密码确认" id="rePassWord" class="form-control">
	              </div>
	            </div>
	          </fieldset>
		      <fieldset>
		      <div class="buttons">
		        <div class="pull-right">
		        	<font color="#F4A137;" id="error" class="agree"></font>
		          &nbsp;
		          <input type="submit" value="提交注册" name="submit" class="btn btn-primary">
	            </div>
	          </div>
	        </form>
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
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
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