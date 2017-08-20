<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" /> 
<link type="text/css" rel="stylesheet" href="css/style_com.css" />
<script src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function logout(){
		if(confirm("您确定要退出登录吗？")){
			window.location.href = "user_logout.action";
		}
	}
	
	function checkLogin(){
		if('${currentUser.userName}' == ''){
			alert("请先登录！");
		}else{
			window.location.href = "shopping_shoppingCartList.action";
		}
	}
</script>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="header-top-left form-inline col-sm-6 col-xs-12 compact-hidden">
			
			</div>
			<div class="header-top-right collapsed-block text-right  col-sm-6 col-xs-12 compact-hidden">
				<div class="tabBlock" id="TabBlock-1">
				
					<c:choose>
						<c:when test="${not empty currentUser }">
							<ul class="top-link list-inline">
								<li class="account" id="my_account">
									<a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span >我的账户</span> <span class="fa fa-angle-down"></span></a>
									<ul class="dropdown-menu ">
										<li><a href="user_userCenter.action"><i class="fa fa-user"></i> ${currentUser.userName }</a></li>
										<li><a href="javascript:logout()"><i class="fa fa-pencil-square-o"></i>注销</a></li>
									</ul>
								</li>
								<li class="login"><a href="shopping_shoppingCartList.action" title="Shopping Cart"><span >购物车</span></a></li>
							</ul>
						</c:when>
						<c:otherwise>
							<ul class="top-link list-inline">
								<li class="account" id="my_account">
									<a href="#" title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown"> <span >我的账户</span> <span class="fa fa-angle-down"></span></a>
									<ul class="dropdown-menu ">
										<li><a href="register.jsp"><i class="fa fa-user"></i> 注册</a></li>
										<li><a href="login.jsp"><i class="fa fa-pencil-square-o"></i>登录</a></li>
									</ul>
								</li>
								<li class="login"><a href="javascript:checkLogin()" title="Shopping Cart"><span >购物车</span></a></li>
							</ul>
						</c:otherwise>
					</c:choose>	
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>