<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %> 
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<script type="text/javascript">
$(function(){  $("a[data-lang]").click(function(){   
	var lang = $(this).attr("data-lang");   
	$.get("?language="+ lang, function(){    
		location.reload();   });   
	return false;  }); 
	});
</script>
<div class="header_top">
	<!--header_top-->
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="contactinfo">
					<ul class="nav nav-pills">
						<li><a href="#">Welcome  ${user}! </a></li>
						<li><a href="#"><i class="fa fa-phone"></i>+84 982531546</a></li>
						<li><a href="#"><i class="fa fa-envelope"></i>markitoshop@fpt.edu.vn</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="btn-group pull-right">
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle usa"
							data-toggle="dropdown">
							Ngôn ngữ <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="?language=vi" data-lang="vi">Vietnamese</a></li>
							<li><a href="?language=en" data-lang="en">English</a></li>
						</ul>
					</div>

				</div>
				<div class="social-icons pull-right">
					<ul class="nav navbar-nav">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/header_top-->
<div class="header-middle">
	<!--header-middle-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="logo pull-left">
					<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="shop-menu pull-right">
					<ul class="nav navbar-nav">
						<li><a href="#"><i class="fa fa-user"></i>Tài Khoản</a></li>
						<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
						<li><a href="javascript:void(0);" id="payment-href"><i class="fa fa-crosshairs"></i>Thanh
								toán</a></li>
						<li><a href="${pageContext.request.contextPath}/Carts?checkCart"><i class="fa fa-shopping-cart"></i>Giỏ
						hàng</a></li>
						<c:choose>								
						<c:when test="${user==null}" >
						<li><a href="login"><i class="fa fa-lock"></i>Đăng nhập</a></li>
						</c:when>
						<c:when test="${user!=null}"><li><a href="logout"><i class="fa fa-lock"></i>Đăng xuất</a></li></c:when>						
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/header-middle-->
<div class="header-bottom">
	<!--header-bottom-->
	<div class="container">
		<div class="row">
			<div class="col-sm-9">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="mainmenu pull-left">
					<ul class="nav navbar-nav collapse navbar-collapse">
						<li><a href="index.html" class="active">Trang chủ</a></li>
						<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
							<ul role="menu" class="sub-menu">
								<li><a href="shop.html">Mua sắm</a></li>
								<li><a href="product-details.html">Product Details</a></li>
								<li><a href="checkout.html">Checkout</a></li>
								<li><a href="cart.html">Cart</a></li>
								<li><a href="login.html">Login</a></li>
							</ul></li>
						<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
							<ul role="menu" class="sub-menu">
								<li><a href="blog">Blog List</a></li>
								<li><a href="blog-single">Blog Single</a></li>
							</ul></li>
						<li><a href="404.html">404</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<form action="search" method="post">
					<div class="search_box pull-right">
						<input type="text" placeholder="Tìm kiếm" width="350px"
							name="keyse" />						
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--/header-bottom-->
