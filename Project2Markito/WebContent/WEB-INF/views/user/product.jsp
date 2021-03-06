<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar"><!-- left -->
					<jsp:include page="left.jsp"/>
					</div>	
				</div>				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<c:forEach begin="" items="${category}" var="ca">								
								<li><a href="products?iddm=${ca.catalogs.catalogId}">${ca.categoryName}</a></li>
								</c:forEach>																					
							</ul><br>
						</div>
						<h3>${mes}</h3>
						<c:forEach items="${product}" var="pr">							
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="${pr.picture1}" alt="" height="207px" width="183px"/>
										<h2>${pr.unitprice} $</h2>
										<p>${pr.productname}</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>${pr.unitprice} $</h2>
											<p>${pr.productname}</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="product-details?idProduct=${pr.productid}"><i class="fa fa-plus-square"></i>Xem chi tiết</a></li>
									</ul>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>			
					<jsp:include page="pagepr.jsp"/>	
				</div>
							
			</div>
		</div>
	</section>	