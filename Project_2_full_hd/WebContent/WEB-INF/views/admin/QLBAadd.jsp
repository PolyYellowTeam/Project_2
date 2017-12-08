<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="breadcumbs">
	<p>
		Home <span>/</span> Banner data
	</p>
</div>
<div class="table">
	<div class="title">
		<h1>Banner data</h1>
	</div>
	<div class="content">
		<a style="margin-left: 15px;" href="QLBAdata">Back</a>
		<form:form action="admin/QLBAadd" modelAttribute="BA" method="post"
			enctype="multipart/form-data">
			<div>
				<label>Location</label>
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
				<label>Banner content</label>
				<form:input path="banner_content" />
			</div>
			<div>
				<label>Url Image</label> <input type="file" name="bannerImgUrl">
			</div>
			<label>Lỗi</label>
			<div>
				<button class="btn" name="cancel">Cancel</button>
				<button class="btn" name="insert">Insert</button>
			</div>
		</form:form>
	</div>
</div>