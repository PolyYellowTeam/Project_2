<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="breadcumbs">
	<p>
		Trang chủ <span>/</span> Quản lý dữ liệu banner
	</p>
</div>
<div class="table">
	<div class="title">
		<h1>Quản lý dữ liệu banner</h1>
	</div>
	<div class="content">
	<a href="QLBAadd" style="margin-left: 5px;">Thêm mới</a>
		<table class="default-table">
			<thead>
				<tr>
					<td>ID</td>
					<td style="width:169px;">Banner Name</td>
					<td>Sale off</td>
					<td>Price</td>
					<td style="width: 469px;">Banner content</td>
					<td>Ảnh</td>
					<td class="functions" colspan="3">Chức năng</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listBa }" var="ba">
					<tr>
						<td style="text-align: center;">${ba.bannerId }</td>
						<td style="text-align: center;">${ba.bannerName }</td>>
						<td style="text-align: center;">${ba.sale_off }</td>
						<td style="text-align: center;">${ba.banner_price }</td>
						<td>${ba.banner_content }</td>
						<td><img style="width: 69px; display: block; margin: 0 auto;" src="${pageContext.request.contextPath}/${ba.bannerImgUrl }"></td>
						<td class="functions">
							<a href="QLBAupdate">Sửa</a>
						</td>
						<td><a href="javascript:void(0)" onclick="edit('',500,500);">Xóa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>