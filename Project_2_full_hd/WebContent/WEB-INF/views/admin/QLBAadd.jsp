<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
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
		<s:form method="post" action="${pageContext.request.contextPath}/admin/QLBAdata/addBA" modelAttribute="BA" enctype="multipart/form-data">
			<div>
				<label>Location</label>
				<s:input path="bannerId"/>
			</div>
			<div>
				<label>Banner name</label>
				<s:input path="bannerName"/>
			</div>
			<div>
				<label>Sale off</label>
				<s:input path="sale_off"/>
			</div>
			<div>
				<label>Price</label>
				<s:input path="banner_price"/>
			</div>
			<div>
				<label>Banner content</label>
				<s:input path="banner_content"/>
			</div>
			<div>
				<label>Location</label>
				<input style="background: yellow; margin-left: 40px; " type="file" name="bannerImgUrl" />
			</div>
			<label>${message }</label>
			<div>
				<button name="insert">Insert</button>
			</div>
		</s:form>
	</div>
</div>