<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="content">
	<div class="container">
		<div class="single">
			<div class="col-md-9 top-in-single">
				<div class="col-md-5 single-top">
					<ul id="etalage">
						<li><a href="optionallink"> <img
								class="etalage_thumb_image img-responsive" src="${pageContext.request.contextPath}/images/si.jpg"
								alt=""> <img class="etalage_source_image img-responsive"
								src="${pageContext.request.contextPath}/images/s1.jpg" alt="">
						</a></li>
						<li><img class="etalage_thumb_image img-responsive"
							src="${pageContext.request.contextPath}/images/si1.jpg" alt="">
							<img class="etalage_source_image img-responsive"
							src="${pageContext.request.contextPath}/images/s2.jpg" alt=""></li>
						<li><img class="etalage_thumb_image img-responsive"
							src="${pageContext.request.contextPath}/images/si2.jpg" alt=""> <img
							class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/images/s3.jpg"
							alt=""></li>
						<li><img class="etalage_thumb_image img-responsive"
							src="${pageContext.request.contextPath}/images/si3.jpg" alt=""> <img
							class="etalage_source_image img-responsive" src="${pageContext.request.contextPath}/images/s4.jpg"
							alt=""></li>
					</ul>

				</div>
				<div class="col-md-7 single-top-in">
					<div class="single-para">
						<h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h4>
						<p>Contrary to popular belief, Lorem Ipsum is not simply
							random text. It has roots in a piece of classical Latin
							literature from 45 BC, making it over 2000 years old.It has roots
							in a piece of classical Latin literature from 45 BC, making it
							over 2000 years old.</p>
						<div class="star-on">
							<ul>
								<li><a href="#"><i> </i></a></li>
								<li><a href="#"><i> </i></a></li>
								<li><a href="#"><i> </i></a></li>
								<li><a href="#"><i> </i></a></li>
								<li><a href="#"><i> </i></a></li>
							</ul>
							<div class="review">
								<a href="#"> 3 reviews </a>/ <a href="#"> Write a review</a>
							</div>
							<div class="clearfix"></div>
						</div>

						<label class="add-to">$32.8</label>

						<div class="available">
							<h6>Available Options :</h6>
							<ul>

								<li>Size:<select>
										<option>Large</option>
										<option>Medium</option>
										<option>small</option>
										<option>Large</option>
										<option>small</option>
								</select></li>
								<li>Cost: <select>
										<option>U.S.Dollar</option>
										<option>Euro</option>
								</select></li>
							</ul>
						</div>

						<a href="javascript:void(0);" class="cart item_add">Add Cart</a>

					</div>
				</div>
				<div class="clearfix"></div>
				<!----- tabs-box ---->
				<div class="sap_tabs">
					<div id="horizontalTab"
						style="display: block; width: 100%; margin: 0px;">
						<ul class="resp-tabs-list">
							<li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Product
									Description</span></li>
							<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Additional
									Information</span></li>
							<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Reviews</span></li>
							<div class="clearfix"></div>
						</ul>
						<div class="resp-tabs-container">
							<div id="fb-root"></div>
							<script>
								(function(d, s, id) {
									var js, fjs = d.getElementsByTagName(s)[0];
									if (d.getElementById(id))
										return;
									js = d.createElement(s);
									js.id = id;
									js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11';
									fjs.parentNode.insertBefore(js, fjs);
								}(document, 'script', 'facebook-jssdk'));
							</script>
							<div class="fb-comments"
								data-href="http://localhost:8080/Project_2_full_hd/single"
								data-numposts="5"></div>
						</div>
					</div>
					<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
						$(document).ready(function() {
							$('#horizontalTab').easyResponsiveTabs({
								type : 'default', //Types: default, vertical, accordion           
								width : 'auto', //auto or any width like 600px
								fit : true
							// 100% fit in a container
							});
						});
					</script>
				</div>
			</div>
			<div class="col-md-3 at-single">
				<div class="single-bottom">
					<h4>Brands</h4>
					<ul>
						<li><input type="checkbox" id="brand" value=""> <label
							for="brand"><span></span> Contrary belief</label></li>
						<li><input type="checkbox" id="brand1" value=""> <label
							for="brand1"><span></span> Lorem Ipsum</label></li>
						<li><input type="checkbox" id="brand2" value=""> <label
							for="brand2"><span></span> Fusce feugiat</label></li>
						<li><input type="checkbox" id="brand3" value=""> <label
							for="brand3"><span></span> Contrary belief</label></li>
						<li><input type="checkbox" id="brand4" value=""> <label
							for="brand4"><span></span>Injected humour</label></li>
					</ul>
				</div>
				<div class="single-bottom">
					<h4>Colors</h4>
					<ul>
						<li><input type="checkbox" id="color" value=""> <label
							for="color"><span></span> Red</label></li>
						<li><input type="checkbox" id="color1" value=""> <label
							for="color1"><span></span> Blue</label></li>
						<li><input type="checkbox" id="color2" value=""> <label
							for="color2"><span></span> Black</label></li>
						<li><input type="checkbox" id="color3" value=""> <label
							for="color3"><span></span> White</label></li>
						<li><input type="checkbox" id="color4" value=""> <label
							for="color4"><span></span>Green</label></li>
					</ul>
				</div>
				<div class="single-bottom">
					<h4>Product Categories</h4>
					<div class="product-go">
						<img class="img-responsive fashion" src="${pageContext.request.contextPath}/images/fa.jpg" alt="">
						<div class="grid-product">
							<a href="#" class="elit">Consectetuer adipiscing elit</a> <span
								class=" price-in"><small>$500.00</small> $400.00</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="product-go">
						<img class="img-responsive fashion" src="${pageContext.request.contextPath}/images/fa1.jpg" alt="">
						<div class="grid-product">
							<a href="#" class="elit">Consectetuer adipiscing elit</a> <span
								class=" price-in"><small>$500.00</small> $400.00</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="product-go">
						<img class="img-responsive fashion" src="${pageContext.request.contextPath}/images/fa2.jpg" alt="">
						<div class="grid-product">
							<a href="#" class="elit">Consectetuer adipiscing elit</a> <span
								class=" price-in"><small>$500.00</small> $400.00</span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>


	</div>
</div>