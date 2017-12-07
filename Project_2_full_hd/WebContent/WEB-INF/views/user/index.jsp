<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- banner -->
<jsp:include page="banner.jsp" />
<!-- end banner -->

<!-- content -->
<div class="content">
	<div class="container">
		<div class="content-top">
			<h2 class="new">NEW ARRIVALS</h2>
			<div class="pink">
				<!-- requried-jsfiles-for owl -->
				<link href="${pageContext.request.contextPath}/css/owl.carousel.css" rel="stylesheet">
				<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
				<script>
					$(document).ready(function() {
						$("#owl-demo").owlCarousel({
							items : 4,
							lazyLoad : true,
							autoPlay : true,
							pagination : true,
						});
					});
				</script>
				<!-- //requried-jsfiles-for owl -->
				<div id="owl-demo" class="owl-carousel text-center">
					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="1"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>
					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi11.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="2"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
							<!---
				<a class="cup" href="single">123 $<i> </i> </a>
				-->
						</div>
					</div>

					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi12.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="3"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>

					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi13.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>

							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="4"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>

					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi11.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="5"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>

					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi13.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="5"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>
					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="6"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>
					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi12.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="7"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>
					<div class="item">
						<div class=" box-in">
							<div class=" grid_box">
								<a href="single"> <img src="${pageContext.request.contextPath}/images/pi11.jpg"
									class="img-responsive" alt="">
									<div class="zoom-icon">

										<ul class="in-by">
											<li><h5>sizes:</h5></li>
											<li><span>S</span></li>
											<li><span>XS</span></li>
											<li><span>M</span></li>
											<li><span> L</span></li>
											<li><span>XL</span></li>
											<li><span> XXL</span></li>
										</ul>


										<ul class="in-by-color">
											<li><h5>colors:</h5></li>
											<li><span> </span></li>
											<li><span class="color"> </span></li>
											<li><span class="color1"> </span></li>
											<li><span class="color2"> </span></li>
											<li><span class="color3"> </span></li>

										</ul>

									</div>
								</a>
							</div>
							<!---->
							<div class="grid_1 simpleCart_shelfItem">
								<a href="javascript:void(0);" class="cup item_add" product-id="8"><span class=" item_price">123
										$ <i> </i>
								</span></a>
							</div>
							<!---->
						</div>
					</div>
					<div class="clearfix"></div>
				</div>

			</div>

		</div>

		<!---->
		<div class="content-middle">
			<h2 class="middle">BEST SALES</h2>
			<div class="col-best">
				<div class="col-md-4">
					<a href="single"><div class="col-in">
							<div class="col-in-left">
								<img src="${pageContext.request.contextPath}/images/ni.jpg" class="img-responsive" alt="">
							</div></a>
					<div class="col-in-right grid_1 simpleCart_shelfItem">
						<h5>fuel t-shirt mod : 9509</h5>
						<ul class="star">
							<li><a href="#"><i> </i> </a></li>
							<li><a href="#"><i> </i> </a></li>
							<li><a href="#"><i> </i> </a></li>
							<li><i class="in-star"> </i></li>
						</ul>
						<!---->
						<a href="javascript:void(0);" class="item_add" product-id="9"><span class="white item_price">123
								$ <i> </i>
						</span></a>
						<!---->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-4">
				<a href="single"><div class="col-in">
						<div class="col-in-left">
							<img src="${pageContext.request.contextPath}/images/ni1.jpg" class="img-responsive" alt="">
						</div></a>
				<div class="col-in-right grid_1 simpleCart_shelfItem">
					<h5>fuel t-shirt mod : 9509</h5>
					<ul class="star">
						<li><i> </i></li>
						<li><i> </i></li>
						<li><i> </i></li>
						<li><i class="in-star"> </i></li>
					</ul>
					<!---->
					<a href="javascript:void(0);" class="item_add" product-id="9"><span class="white item_price">123
							$ <i> </i>
					</span></a>
					<!---->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-4">
			<a href="single"><div class="col-in">
					<div class="col-in-left">
						<img src="${pageContext.request.contextPath}/images/ni.jpg" class="img-responsive" alt="">
					</div></a>
			<div class="col-in-right grid_1 simpleCart_shelfItem">
				<h5>fuel t-shirt mod : 9509</h5>
				<ul class="star">
					<li><i> </i></li>
					<li><i> </i></li>
					<li><i> </i></li>
					<li><i class="in-star"> </i></li>
				</ul>
				<!---->
				<a href="javascript:void(0);" class="item_add" product-id="10"><span class="white item_price">123
						$ <i> </i>
				</span></a>
				<!---->
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
</div>
<!---->

<div class="content-bottom">
	<div class="col-md-8 latter">
		<h6>NEWSLETTER</h6>
		<p>sign up now to our newsletter discount! to get the Welcome
			discount</p>

		<div class="clearfix"></div>
	</div>
	<div class="col-md-4 latter-right">

		<form>
			<div class="join">
				<input type="text" value="your email here"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'your email here';}">
				<i> </i>
			</div>
			<input type="submit" value="join us">
		</form>

	</div>
	<div class="clearfix"></div>
</div>

<!---->
<div class="bottom-content">

	<div class="col-md-4">
		<img src="${pageContext.request.contextPath}/images/ad1.png" class="img-responsive" alt="">
	</div>
	<div class="col-md-4">
		<img src="${pageContext.request.contextPath}/images/ad1.png" class="img-responsive" alt="">
	</div>
	<div class="col-md-4">
		<img src="${pageContext.request.contextPath}/images/ad1.png" class="img-responsive" alt="">
	</div>
	<div class="clearfix"></div>
</div>

</div>
</div>

<!-- end content -->