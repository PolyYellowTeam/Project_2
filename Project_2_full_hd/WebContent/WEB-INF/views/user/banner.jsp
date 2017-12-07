<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--banner-->

<div class="banner">
	<div class="container">
		<div class="wmuSlider example1">

			<div class="wmuSliderWrapper">
				<c:forEach items="${listBa }" var="ba">
					<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-wrap">
							<div class="banner-top">
								<a href="single.html">
									<div class="banner-top-in">
										<img src="${ba.bannerImgUrl }" class="img-responsive" alt="">
									</div>
								</a>
								<div class="cart-at grid_1 simpleCart_shelfItem">
									<div class="item_add">
										<span class="item_price">${ba.banner_price } $ <i> </i>
										</span>
									</div>
									<div class="off">
										<label>${ba.sale_off } off !</label>
										<p>${ba.banner_content }</p>
									</div>
								</div>
								<div class="clearfix"></div>
	
							</div>
							<div class="banner-top banner-bottom">
								<a href="single.html">
									<div class="banner-top-in at">
										<img src="${ba.bannerImgUrl }" class="img-responsive" alt="">
									</div>
								</a>
								<div class="cart-at grid_1 simpleCart_shelfItem">
									<div class="item_add">
										<span class="item_price">${ba.banner_price } $ <i> </i>
										</span>
									</div>
									<div class="off">
										<label>${ba.sale_off } off !</label>
										<p>${ba.banner_content }</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="clearfix"></div>
						</div>
					</article>
				</c:forEach>
			</div>
			<ul class="wmuSliderPagination">
				<li><a href="#" class="">0</a></li>
				<li><a href="#" class="">1</a></li>
				<li><a href="#" class="wmuActive">2</a></li>
			</ul>
		</div>
		<!---->
		<script src="js/jquery.wmuSlider.js"></script>
		<script>
			$('.example1').wmuSlider({
				pagination : true,
				nav : false,
			});
		</script>

	</div>
</div>
<!--end banner -->