<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8"%>
<h2>Danh mục</h2>
<div class="panel-group category-products" id="accordian">
	<c:forEach items="${listCatalogs}" var="catalog">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a href="products?idCatalogs=${catalog.catalogId}">${catalog.catalogName}</a>
				</h4>
			</div>
		</div>
	</c:forEach>
</div>
<!--/category-products-->
<div class="brands_products">
	<!--brands_products-->
	<h2>Brands</h2>
	<div class="brands-name">
		<!--  -->
		<ul class="nav nav-pills nav-stacked">
			<c:forEach items="${listSuppliers}" var="supplier">
				<li><a href=""> <span class="pull-right"></span>${supplier.supplierName}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>
<!--/brands_products-->
<div class="price-range">
	<!--price-range-->
	<h2>Price Range</h2>
	<div class="well text-center">
		<input type="text" class="span2" value="" data-slider-min="0"
			data-slider-max="600" data-slider-step="5"
			data-slider-value="[0,600]" id="sl2"><br /> <b
			class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
	</div>
</div>
<!--/price-range-->
<div class="shipping text-center">
	<!--shipping-->
	<img src="images/home/shipping.jpg" alt="" />
</div>
<!--/shipping-->
