<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-left">
				<a href="index"><img src="images/logo.png" alt=""></a>
				<p class="footer-class">
					© 2015 Markito All Rights Reserved | Template by <a
						href="http://w3layouts.com/" target="_blank">W3layouts</a>
				</p>
			</div>
			<div class="col-md-2 footer-middle">
				<ul>
					<li><a href="404">about us</a></li>
					<li><a href="contact"> contact us</a></li>
					<li><a href="products"> our stores</a></li>
				</ul>
			</div>
			<div class="col-md-4 footer-left-in">
				<ul class="term">
					<li><a href="#">terms and conditions</a></li>
					<li><a href="#"> markito in the press</a></li>
					<li><a href="#"> testimonials</a></li>
				</ul>
				<ul class="term">
					<li><a href="#">join us</a></li>
					<li><a href="#"> markito videos</a></li>

				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 footer-right">
				<h5>WE SUPPORT</h5>
				<ul>
					<li><a href="#"><i> </i></a></li>
					<li><a href="#"><i class="we"> </i></a></li>
					<li><a href="#"><i class="we-in"> </i></a></li>
					<li><a href="#"><i class="we-at"> </i></a></li>
					<li><a href="#"><i class="we-at-at"> </i></a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				 */

				$().UItoTop({
					easingType : 'easeOutQuart'
				});

			});
		</script>
		<a href="#" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>

	</div>
	<!-- end footer -->