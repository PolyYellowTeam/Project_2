<%@ page pageEncoding="utf-8"%>	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
					<jsp:include page="left.jsp"/>
					</div>	
				</div>					
				<div class="col-sm-9 padding-right">
				<c:forEach items="${product}" var="pr">		
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="${pr.picture1}" alt="" />
								<h3>ZOOM</h3>
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
										<div class="item active">
										  <a href=""><img src="${pr.picture1}" alt="" height="85px" width="84px"></a>
										  <a href=""><img src="${pr.picture2}" alt="" height="85px" width="84px"></a>
										  <a href=""><img src="${pr.picture3}" alt="" height="85px" width="84px"></a>
										</div>
										<div class="item">
										  <a href=""><img src="${pr.picture1}" alt="" height="85px" width="84px"></a>
										  <a href=""><img src="${pr.picture2}" alt="" height="85px" width="84px"></a>
										  <a href=""><img src="${pr.picture3}" alt="" height="85px" width="84px"></a>
										</div>
										<div class="item">
										  <a href=""><img src="${pr.picture1}" alt="" height="85px" width="84px"></a>
										  <a href=""><img src="${pr.picture2}" alt="" height="85px" width="84px"></a>
										  <a href=""><img src="${pr.picture3}" alt="" height="85px" width="84px"></a>
										</div>							
									</div>
								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>
						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />
								<h2>${pr.productName}</h2>
								<p>Product ID: ${pr.productId}</p>
								<img src="images/product-details/rating.png" alt="" />
								<span>
									<span>${pr.price} $</span>
									<label>Quantity:${pr.quantity}</label>
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Brand: ${pr.suppliers.supplierName}</b></p>
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab">Thông tin</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
								<li><a href="#tag" data-toggle="tab">Tag</a></li>
								<li><a href="#reviews" data-toggle="tab">Nhận xét</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details" >
								<h5>Thông tin sản phẩm: ${pr.describe}</h5>
							</div>							
							<div class="tab-pane fade" id="tag" >
							</div>							
							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-sm-12">
									<ul>
										<li><a href=""><i class="fa fa-user"></i>Admin</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 201</a></li>
									</ul>
									<h5>${message}</h5>									
									<p><b>Gửi đánh giá</b></p>																		
									<form action="feedback" method="post">
										<span>
											<input name="subject" type="text" placeholder="Your Name"/>
											<input name="from" type="email" placeholder="Email Address"/>
										</span>
										<textarea name="body" ></textarea>
										<b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
										<button type="button" class="btn btn-default pull-right">
											Submit
										</button>
									</form>
								</div>
							</div>
							
						</div>
					</div><!--/category-tab-->
					</c:forEach>				
					
				</div>
			</div>
		</div>
	</section>