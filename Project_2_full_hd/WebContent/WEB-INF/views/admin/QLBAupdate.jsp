<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="breadcumbs">
	<p>
		Trang chủ <span>/</span> Chỉnh sửa dữ liệu banner
	</p>
</div>
<div class="table">
	<div class="title">
		<h1>Chỉnh sửa dữ liệu banner</h1>
	</div>
	<div class="content">
		<form action="updateBanner" modelAttribute="" method="post" enctype="multipart/form-data">
			<div>
				<label>Sửa banner</label>
			</div>
			<div>
				<label>Mã banner</label>
				
			</div>
		</form>
	</div>
</div>