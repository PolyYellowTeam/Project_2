<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
		<a href="QLBAadd">Add new</a>
		<table class="default-table">
			<thead>
				<tr>
					<td>ID</td>
					<td style="width: 169px;">Banner Name</td>
					<td>Sale off</td>
					<td>Price</td>
					<td style="width: 469px;">Banner content</td>
					<td>Ảnh</td>
					<td class="functions" colspan="3">Function</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listBa }" var="ba">
					<tr>
						<td style="text-align: center;">${ba.bannerId }</td>
						<td style="text-align: center;">${ba.bannerName }</td>
						<td style="text-align: center;">${ba.sale_off }</td>
						<td style="text-align: center;">${ba.banner_price }</td>
						<td>${ba.banner_content }</td>
						<td><img style="width: 69px; display: block; margin: 0 auto;"
							src="${pageContext.request.contextPath}/${ba.bannerImgUrl }"></td>
						<td style="text-align: center; width: 69px;"><a href="">Edit</a></td>
						<td style="text-align: center; width: 69px;"><a href="">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>