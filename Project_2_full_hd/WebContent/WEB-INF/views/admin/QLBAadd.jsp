<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="breadcumbs">
	<p>
		Trang chủ <span>/</span> Thêm mới dữ liệu banner
	</p>
</div>
<div class="table">
	<div class="title">
		<h1>Thêm mới dữ liệu banner</h1>
	</div>
	<div class="content">
		<form:form action="admin/QLBAadd" modelAttribute="banners" method="post">
			<div>
				<label>ID banner</label>
				<form:input path="bannerId" />
			</div>
			<div>
				<label>Banner name</label>
				<form:input path="bannerName" />
			</div>
			<div>
				<label>Sale off</label>
				<form:input path="sale_off" />
			</div>
			<div>
				<label>Price</label>
				<form:input path="banner_price" />
			</div>
			<div>
				<label>Content</label>
				<form:input path="banner_content" />
			</div>
			<div>
				<label>Url image</label>
				<input type="file" name="bannerImgUrl" />
			</div>
		</form:form>
	</div>
</div>