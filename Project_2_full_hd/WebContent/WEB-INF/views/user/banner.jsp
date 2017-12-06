<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String a = request.getRequestURL().toString();
	int c = a.indexOf("WEB-INF");
	String b = a.substring(0, c);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--banner-->
<div class="banner">
	<div class="container">
		<div class="wmuSlider example1">
			<div class="wmuSliderWrapper">
				<article style="position: absolute; width: 100%; opacity: 0;">
				<div class="banner-wrap">

					<div class="banner-top">
						<a href="single">
							<div class="banner-top-in">
								<img src="<%=b%>images/ba.png" class="img-responsive" alt="">
							</div>
						</a>
						<div class="cart-at grid_1 simpleCart_shelfItem">
							<div class="off">
								<label>35% off !</label>
								<p>White Blended Cotton "still fresh" t-shirt</p>
							</div>
						</div>
						<div class="clearfix"></div>

					</div>

					<div class="banner-top banner-bottom">
						<a href="single">
							<div class="banner-top-in at">
								<img src="<%=b%>images/ba22.png" class="img-responsive" alt="">
							</div>
						</a>
						<div class="cart-at grid_1 simpleCart_shelfItem">
							<div class="off">
								<label>35% off !</label>
								<p>White Blended Cotton "still fresh" t-shirt</p>
							</div>
						</div>
						<div class="clearfix"></div>

					</div>
					<div class="clearfix"></div>

				</div>
				</article>
			</div>
			<ul class="wmuSliderPagination">
				<li><a href="#" class="">0</a></li>
				<li><a href="#" class="">1</a></li>
				<li><a href="#" class="wmuActive">2</a></li>
			</ul>
		</div>
		<!---->
		<script src="<%=b%>js/jquery.wmuSlider.js"></script>
		<script>
			$('.example1').wmuSlider({
				pagination : true,
				nav : false,
			});
		</script>

	</div>
</div>
<!--end banner -->