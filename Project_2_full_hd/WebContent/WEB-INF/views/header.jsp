<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--header-->
<div class="header">
	<div class="top-header">
		<div class="container">
			<div class="top-head">
				<div class="header-para">
					<ul class="social-in">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="ic"> </i></a></li>
						<li><a href="#"><i class="ic1"> </i></a></li>
					</ul>
				</div>

				<ul class="header-in">
					<li><a href="products"> brands</a></li>
					<li><a href="404">about us</a></li>
					<li><a href="contact"> contact us</a></li>
					<c:set var="username" scope="session" value="${sessionScope.user}" />
					<c:choose>
						<c:when test="${username != null}">
							<li>Xin chào ${sessionScope.user},<a
								href="${pageContext.request.contextPath }/logout">đăng xuất</a></li>
						</c:when>
						<c:when test="${username == null}">
							<li>Chào khách,<a
								href="${pageContext.request.contextPath }/login">đăng nhập?</a></li>
						</c:when>
					</c:choose>
				</ul>
				<div class="search-top">
					<div class="search">
						<form>
							<input type="text" value="search about something ?"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'search about something ?';}">
							<input type="submit" value="">
						</form>
					</div>
					<div class="world">
						<ul>
							<li><a href="#"><span> </span></a></li>
							<li><select class="in-drop">
									<option>EN</option>
									<option>DE</option>
									<option>ES</option>
							</select></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->

	<div class="header-top">
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<a href="index"><img src="images/logo.png" alt=""></a>
				</div>
				<div class="top-nav">
					<ul class="megamenu skyblue">
						<li class="active grid"><a href="#">fashion</a>
							<div class="megapanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="products">Accessories</a></li>
												<li><a href="products">Bags</a></li>
												<li><a href="products">Caps & Hats</a></li>
												<li><a href="products">Hoodies & Sweatshirts</a></li>
												<li><a href="products">Jackets & Coats</a></li>
												<li><a href="products">Jeans</a></li>
												<li><a href="products">Jewellery</a></li>
												<li><a href="products">Jumpers & Cardigans</a></li>
												<li><a href="products">Leather Jackets</a></li>
												<li><a href="products">Long Sleeve T-Shirts</a></li>
												<li><a href="products">Loungewear</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="products">Shirts</a></li>
												<li><a href="products">Shoes, Boots & Trainers</a></li>
												<li><a href="products">Shorts</a></li>
												<li><a href="products">Suits & Blazers</a></li>
												<li><a href="products">Sunglasses</a></li>
												<li><a href="products">Sweatpants</a></li>
												<li><a href="products">Swimwear</a></li>
												<li><a href="products">Trousers & Chinos</a></li>
												<li><a href="products">T-Shirts</a></li>
												<li><a href="products">Underwear & Socks</a></li>
												<li><a href="products">Vests</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<h4>Popular Brands</h4>
											<ul>
												<li><a href="products">Levis</a></li>
												<li><a href="products">Persol</a></li>
												<li><a href="products">Nike</a></li>
												<li><a href="products">Edwin</a></li>
												<li><a href="products">New Balance</a></li>
												<li><a href="products">Jack & Jones</a></li>
												<li><a href="products">Paul Smith</a></li>
												<li><a href="products">Ray-Ban</a></li>
												<li><a href="products">Wood Wood</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div></li>
						<li><a href="#">furniture & decor</a>
							<div class="megapanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="decor">Bed</a></li>
												<li><a href="decor">Chest</a></li>
												<li><a href="decor">Stool & Reider</a></li>
												<li><a href="decor">Chair & Carpet</a></li>
												<li><a href="decor">Curtain & Brix</a></li>
												<li><a href="decor">Shelf</a></li>
												<li><a href="decor">Desk</a></li>
												<li><a href="decor">Sofa & Anson</a></li>
												<li><a href="decor">Bench</a></li>
												<li><a href="decor">Sink</a></li>
												<li><a href="decor">Lamp</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="decor">Armchair</a></li>
												<li><a href="decor">Reider Bench</a></li>
												<li><a href="decor">Carpet & Desk</a></li>
												<li><a href="decor">Wardrobe & Lamp</a></li>
												<li><a href="decor">Car seat</a></li>
												<li><a href="decor">Lounger</a></li>
												<li><a href="decor">Anson</a></li>
												<li><a href="decor">Karlstad</a></li>
												<li><a href="decor">Camilla & Wardrobe</a></li>
												<li><a href="decor">Colton</a></li>
												<li><a href="decor">Brix</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<iframe src="https://player.vimeo.com/video/16878818"
											webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
									</div>
								</div>
							</div></li>
						<li class="grid"><a href="#">mobiles & tablets</a>
							<div class="megapanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="mobile">Lenovo Tablets</a></li>
												<li><a href="mobile">Motorola</a></li>
												<li><a href="mobile">Samsung </a></li>
												<li><a href="mobile">Htc Tab</a></li>
												<li><a href="mobile">Dell & Compaq</a></li>
												<li><a href="mobile">Asus Tablets</a></li>
												<li><a href="mobile">Microsoft</a></li>
												<li><a href="mobile">Moto E & Moto G</a></li>
												<li><a href="mobile">Intex</a></li>
												<li><a href="mobile">Hauwei Lumia</a></li>
												<li><a href="mobile">Loungewear</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="mobile">Asus Zenfone 2</a></li>
												<li><a href="mobile">Nikon & Sony</a></li>
												<li><a href="mobile">Shorts</a></li>
												<li><a href="mobile">Olymplus</a></li>
												<li><a href="mobile">Sunglasses</a></li>
												<li><a href="mobile">Samsung Nx</a></li>
												<li><a href="mobile">Printers & Monitors</a></li>
												<li><a href="mobile">Routers</a></li>
												<li><a href="mobile">Data Cards</a></li>
												<li><a href="mobile">Mouse & Keyboard</a></li>
												<li><a href="mobile">Ink Cartridges</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="col1">
											<iframe src="https://player.vimeo.com/video/8118831"
												webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
										</div>
									</div>
								</div>
							</div></li>
						<li class="grid"><a href="health">health & beauty</a></li>
						<li><a href="#">tvs, gaming & cameras</a>
							<div class="megapanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="mobile">Lenovo Tablets</a></li>
												<li><a href="mobile">Motorola</a></li>
												<li><a href="mobile">Samsung </a></li>
												<li><a href="mobile">Htc Tab</a></li>
												<li><a href="mobile">Dell & Compaq</a></li>
												<li><a href="mobile">Asus Tablets</a></li>
												<li><a href="mobile">Microsoft</a></li>
												<li><a href="mobile">Moto E & Moto G</a></li>
												<li><a href="mobile">Intex</a></li>
												<li><a href="mobile">Hauwei Lumia</a></li>
												<li><a href="mobile">Loungewear</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="mobile">Asus Zenfone 2</a></li>
												<li><a href="mobile">Nikon & Sony</a></li>
												<li><a href="mobile">Shorts</a></li>
												<li><a href="mobile">Olymplus</a></li>
												<li><a href="mobile">Sunglasses</a></li>
												<li><a href="mobile">Samsung Nx</a></li>
												<li><a href="mobile">Printers & Monitors</a></li>
												<li><a href="mobile">Routers</a></li>
												<li><a href="mobile">Data Cards</a></li>
												<li><a href="mobile">Mouse & Keyboard</a></li>
												<li><a href="mobile">Ink Cartridges</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="col1">
											<iframe src="https://player.vimeo.com/video/8118831"
												webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
										</div>
									</div>
								</div>
							</div></li>


					</ul>
				</div>
				<div class="cart box_1">
					<a href="checkout">
						<h3>
							<div class="total">
								<!-- <span class="simpleCart_total"></span> --> (<span
									id="simpleCart_quantity" class="simpleCart_quantity">0</span>
								Sản phẩm)
							</div>
							<img src="images/cart.png" alt="" />
						</h3>
					</a>
					<p>
						<a href="javascript:;" class="simpleCart_empty"><img
							src="images/cart-c.png" alt=""></a>
					</p>
					<div class="clearfix"></div>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<!--end header -->