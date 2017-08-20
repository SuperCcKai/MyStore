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
		<div class="header-center left">
			<jsp:include page="common/top3.jsp" />
		</div>
		<div class="header-bottom">
			<jsp:include page="common/top4.jsp" />
		</div>
	</header>

	<!-- //Header Container  -->
	<!-- Main Container  -->
	<div class="main-container container">
		<ul class="breadcrumb"  style="margin-left: 300px;">
			<li><a href="index.jsp">首页</a></li>
			<li>商品详情</li>
		</ul>
		
		<div class="row">
			<!-- Middle Part Start -->
			<div id="content" class="col-md-12 col-sm-12">
				
				<div class="product-view row" style="margin-left: 285px;">
					<div class="left-content-product col-lg-10 col-xs-12">
						<div class="row" style="width: 925px;">
							<div class="content-product-left class-honizol col-sm-6 col-xs-12 " style="width: 460px;">
								<div class="large-image  ">
									<img itemprop="image" class="product-image-zoom" src="${product.proPic}" data-zoom-image="image/1.jpg" title="Bint Beef" alt="Bint Beef">
								</div>
								
							</div>

							<div class="content-product-right col-sm-6 col-xs-12">
							  <div class="title-product">
								  <h1>${product.name}</h1>
								</div>
							  <div class="box-review form-group">


								<div class="product-label form-group">
									<div class="product_page_price price" itemprop="offerDetails" itemscope="" itemtype="http://data-vocabulary.org/Offer">
										<p><span class="price-new" itemprop="price">&nbsp;</span><span class="jiage" itemprop="price">商城价 &nbsp; &nbsp; </span><span class="price-new" itemprop="price">￥${product.price}</span>
									</div>
									<div class="stock"></div>
								</div>

								<div class="product-box-desc">
									<div class="inner-box-desc">
										<div class="price-tax">
                                        <p>&nbsp;</p>
										  <p><span>本店活动:</span> <span class="huod">满88元，包邮</span></p>
                                           <p><span>库存：</span> <span class="huod">库存234件 </span></p>
                                            <p><span>运费：</span> <span class="huod">快递5.00</span></p>
										  <p>&nbsp;</p>
										</div>
										<div class="reward"></div>
										<div class="brand"></div>
<div class="reward"></div>
									</div>
								</div>


								<div id="product">
								  <div class="box-checkbox form-group required">
								    <div id="input-option232"></div>
								  </div>

									<div class="form-group box-info-product">
										<div class="option quantity">
										  <div class="input-group quantity-control" unselectable="on" style="-webkit-user-select: none;">
												<label>质量</label>
												<input class="form-control" type="text" name="quantity"
												value="1">
												<input type="hidden" name="product_id" value="50">
												<span class="input-group-addon product_quantity_down">−</span>
												<span class="input-group-addon product_quantity_up">+</span>
										  </div>
										</div>
										<div class="cart">
											<input type="button" data-toggle="tooltip" title="" value="Add to Cart" data-loading-text="Loading..." id="button-cart" class="btn btn-mega btn-lg" onclick="cart.add('42', '1');" data-original-title="Add to Cart">
										</div>
										<div class="add-to-links wish_comp">
											<ul class="blank list-inline">
												<li class="wishlist">
													<a class="icon" data-toggle="tooltip" title=""
													onclick="wishlist.add('50');" data-original-title="Add to Wish List"><i class="fa fa-heart"></i>
													</a>
												</li>
												<li class="compare">
													<a class="icon" data-toggle="tooltip" title=""
													onclick="compare.add('50');" data-original-title="Compare this Product"><i class="fa fa-exchange"></i>
													</a>
												</li>
											</ul>
										</div>

									</div>

							  </div>
								<!-- end box info product -->

							</div>
						</div>
					</div>
					
				</div>
				
				<!-- Product Tabs -->
				<div class="producttab ">
	<div class="tabsslider  vertical-tabs col-xs-12">
		<ul class="nav nav-tabs col-lg-2 col-sm-3">
			<li class="active"><a data-toggle="tab" href="#tab-1">宝贝详情</a></li>
			<li class="item_nonactive"><a data-toggle="tab" href="#tab-review">评论(1)</a></li>
			<li class="item_nonactive"><a data-toggle="tab" href="#tab-4">商品参数</a></li>
			
		</ul>
		<div class="tab-content col-lg-10 col-sm-9 col-xs-12">
			<div id="tab-1" class="tab-pane fade active in">
				<p> 基本信息<br>
				  商品名称：	数字媒体专业英语(21世纪高等学校数字媒体专业规划教材)<br>
				  作者：	周灵	开本：	16开<br>
				  原价：	35	页数：	324<br>
				  现价：	见顶部	出版时间	2011-08-01<br>
				  ISBN号：	9787302250203	印刷时间：	2011-08-01<br>
				  出版社：	清华大学	版次：	1<br>
			    商品类型：	图书	印次：	1</p>
				<p>&nbsp;</p>
				<p>这本由周灵主编的《数字媒体专业英语》旨在让学生掌握较多相关专业英语词汇和数字媒体的基本概念，为阅读专业文献和书籍打下坚实的基础，同时为在以后工作中解决与专业英语相关的问题提供必要的知识保证。《数字媒体专业英语》结构编排完整、信息材料新颖。首先简单介绍了专业英语的翻译方法；第一部分阐述数字媒体相关概念，包括多媒体综述、数字图像处理、数字音频、媒体资产管理、虚拟现实技术等内容：第二部分对常用的数字媒体应用软件进行介绍，如Photoshop、Flash、Dreamweaver、3dsMax、Premiere、AfterEffects等；第三部分介绍包括数据传输技术、光纤技术、无源光网络技术、电视原理、电视接收机在内的电信与通信技术；第四部分阐述计算机系统构成；第五部分列举常用的编程语言，如Java、ActionScriDt、C++等；第六部分介绍计算机网络的概念、应用及网络安全相关知识。每篇课文都配有习题及参考译文，供相关专业的师生参考。<br>
			    </p>
				
			</div>
			<div id="tab-review" class="tab-pane fade">
				<form>
					<div id="review">
						<table class="table table-striped table-bordered">
							<tbody>
								<tr>
									<td style="width: 50%;"><strong>Super Administrator</strong></td>
									<td class="text-right">29/07/2015</td>
								</tr>
								<tr>
									<td colspan="2">
										<p>Best this product opencart</p>
										<div class="ratings">
											<div class="rating-box">
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="text-right"></div>
					</div>
					<h2 id="review-title">Write a review</h2>
					<div class="contacts-form">
						<div class="form-group"> <span class="icon icon-user"></span>
							<input type="text" name="name" class="form-control" value="Your Name" onblur="if (this.value == '') {this.value = 'Your Name';}" onfocus="if(this.value == 'Your Name') {this.value = '';}"> 
						</div>
						<div class="form-group"> <span class="icon icon-bubbles-2"></span>
							<textarea class="form-control" name="text" onblur="if (this.value == '') {this.value = 'Your Review';}" onfocus="if(this.value == 'Your Review') {this.value = '';}">Your Review</textarea>
						</div> 
						<span style="font-size: 11px;"><span class="text-danger">Note:</span>						HTML is not translated!</span>
						
						<div class="form-group">
						 <b>Rating</b> <span>Bad</span>&nbsp;
						<input type="radio" name="rating" value="1"> &nbsp;
						<input type="radio" name="rating"
						value="2"> &nbsp;
						<input type="radio" name="rating"
						value="3"> &nbsp;
						<input type="radio" name="rating"
						value="4"> &nbsp;
						<input type="radio" name="rating"
						value="5"> &nbsp;<span>Good</span>
						
						</div>
						<div class="buttons clearfix"><a id="button-review" class="btn buttonGray">Continue</a></div>
					</div>
				</form>
			</div>
			<div id="tab-4" class="tab-pane fade">
				<a href="#">Monitor</a>,
				<a href="#">Apple</a>				
			</div>
			<div id="tab-5" class="tab-pane fade">
				<p>Lorem ipsum dolor sit amet, consetetur
					sadipscing elitr, sed diam nonumy eirmod
					tempor invidunt ut labore et dolore
					magna aliquyam erat, sed diam voluptua.
					At vero eos et accusam et justo duo
					dolores et ea rebum. Stet clita kasd
					gubergren, no sea takimata sanctus est
					Lorem ipsum dolor sit amet. Lorem ipsum
					dolor sit amet, consetetur sadipscing
					elitr, sed diam nonumy eirmod tempor
					invidunt ut labore et dolore magna aliquyam
					erat, sed diam voluptua. </p>
				<p>At vero eos et accusam et justo duo dolores
					et ea rebum. Stet clita kasd gubergren,
					no sea takimata sanctus est Lorem ipsum
					dolor sit amet. Lorem ipsum dolor sit
					amet, consetetur sadipscing elitr.</p>
				<p>Sed diam nonumy eirmod tempor invidunt
					ut labore et dolore magna aliquyam erat,
					sed diam voluptua. At vero eos et accusam
					et justo duo dolores et ea rebum. Stet
					clita kasd gubergren, no sea takimata
					sanctus est Lorem ipsum dolor sit amet.</p>
			</div>
		</div>
	</div>
</div>
				<!-- //Product Tabs -->
				
				<!-- Related Products -->
				<div class="related titleLine products-list grid module ">
	<h3 class="modtitle">看了又看  </h3>
	<div class="releate-products ">
		<div class="product-layout">
			<div class="product-item-container">
				<div class="left-block">
					<div class="product-image-container second_img ">
						<img  src="image/demo/shop/product/e11.jpg"  title="Apple Cinema 30&quot;" class="img-responsive" />
						<img  src="image/demo/shop/product/e12.jpg"  title="Apple Cinema 30&quot;" class="img_0 img-responsive" />
					</div>
					<!-- Sale Label -->
					<span class="label label-sale">Sale</span>
					<!-- full quick view block -->
					<a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="#">  Quickview</a>
					<!-- end full quick view block -->
				</div>
				
				
				<div class="right-block">
					<div class="caption">
						<h4><a href="product.html">Apple Cinema 30&quot;</a></h4>		
						<div class="ratings">
							<div class="rating-box">
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
							</div>
						</div>
											
						<div class="price">
							<span class="price-new">¥28.00</span> 
							<span class="price-old">¥38.00</span>		 
							   
						</div>
						<div class="description item-desc hidden">
							<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut l..</p>
						</div>
					</div>
					
					  <div class="button-group">
						<button class="addToCart" type="button" data-toggle="tooltip" title="加入购物车" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs">加入购物车</span></button>
						<button class="wishlist" type="button" data-toggle="tooltip" title="收藏" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
						
					  </div>
				</div>right block

			</div>
		</div>
		<div class="product-layout ">
			<div class="product-item-container">
				<div class="left-block">
					<div class="product-image-container second_img ">
						<img  src="image/demo/shop/product/11.jpg"  title="Apple Cinema 30&quot;" class="img-responsive" />
						<img  src="image/demo/shop/product/10.jpg"  title="Apple Cinema 30&quot;" class="img_0 img-responsive" />
						
					</div>
					Sale Label
					<span class="label label-sale">Sale</span>
					full quick view block
					<a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="#">浏览</a>
					end full quick view block
				</div>
				
				
				<div class="right-block">
					<div class="caption">
						<h4><a href="product.html">Apple Cinema 30&quot;</a></h4>		
						<div class="ratings">
							<div class="rating-box">
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
							</div>
						</div>
											
						<div class="price">
							<span class="price-new">$74.00</span> 
							<span class="price-old">$122.00</span>		 
							  
						</div>
						<div class="description item-desc hidden">
							<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut l..</p>
						</div>
					</div>
					
					  <div class="button-group">
						<button class="addToCart" type="button" data-toggle="tooltip" title="加入购物车" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs">加入购物车</span></button>
						<button class="wishlist" type="button" data-toggle="tooltip" title="收藏" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
						
					  </div>
				</div>right block

			</div>
		</div>
		<div class="product-layout ">
			<div class="product-item-container">
				<div class="left-block">
					<div class="product-image-container second_img ">
						<img  src="image/demo/shop/product/35.jpg"  title="Apple Cinema 30&quot;" class="img-responsive" />
						<img  src="image/demo/shop/product/34.jpg"  title="Apple Cinema 30&quot;" class="img_0 img-responsive" />
					</div>
					Sale Label
					<span class="label label-sale">Sale</span>
					full quick view block
					<a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="#">浏览</a>
					end full quick view block
				</div>
				
				
				<div class="right-block">
					<div class="caption">
						<h4><a href="product.html">Apple Cinema 30&quot;</a></h4>		
						<div class="ratings">
							<div class="rating-box">
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
							</div>
						</div>
											
						<div class="price">
							<span class="price-new">$74.00</span> 
							<span class="price-old">$122.00</span>		 
							
						</div>
						<div class="description item-desc hidden">
							<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut l..</p>
						</div>
					</div>
					
					  <div class="button-group">
						<button class="addToCart" type="button" data-toggle="tooltip" title="加入购物车" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs">加入购物车</span></button>
						<button class="wishlist" type="button" data-toggle="tooltip" title="收藏" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
						
					  </div>
				</div>right block

			</div>
		</div>
		<div class="product-layout ">
			<div class="product-item-container">
				<div class="left-block">
					<div class="product-image-container second_img ">
						<img  src="image/demo/shop/product/14.jpg"  title="Apple Cinema 30&quot;" class="img-responsive" />
						<img  src="image/demo/shop/product/15.jpg"  title="Apple Cinema 30&quot;" class="img_0 img-responsive" />
					</div>
					Sale Label
					<span class="label label-sale">Sale</span>
					full quick view block
					<a class="quickview iframe-link visible-lg" data-fancybox-type="iframe"  href="#">浏览</a>
					end full quick view block
				</div>
				
				
				<div class="right-block">
					<div class="caption">
						<h4><a href="product.html">Apple Cinema 30&quot;</a></h4>		
						<div class="ratings">
							<div class="rating-box">
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
							</div>
						</div>
											
						<div class="price">
							<span class="price-new">$74.00</span> 
							<span class="price-old">$122.00</span>		 
							 
						</div>
						<div class="description item-desc hidden">
							<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut l..</p>
						</div>
					</div>
					
					  <div class="button-group">
						<button class="addToCart" type="button" data-toggle="tooltip" title="加入购物车" onclick="cart.add('42', '1');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs">加入购物车</span></button>
						<button class="wishlist" type="button" data-toggle="tooltip" title="收藏" onclick="wishlist.add('42');"><i class="fa fa-heart"></i></button>
						
					  </div>
				</div>right block

			</div>
		</div>
	</div>
</div>

			end Related  Products
			
				
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
	
	
	<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
	<script type="text/javascript" src="js/themejs/addtocart.js"></script>
	<script type="text/javascript" src="js/themejs/application.js"></script>
	
	
	
</body>
</html>