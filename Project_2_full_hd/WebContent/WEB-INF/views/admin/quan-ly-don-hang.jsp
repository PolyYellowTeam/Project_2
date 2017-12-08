<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="breadcumbs">
	<p>
		Trang chủ <span>/</span> Quản lý đơn hàng
	</p>
</div>
<div class="table">
	<div class="title">
		<h1>Quản lý đơn hàng</h1>
	</div>
	<div class="content">
		<table class="default-table">
			<thead>
				<tr>
					<td>#</td>
					<td>Nhân viên tiếp nhận</td>
					<td>Khách hàng</td>
					<td>Ngày tạo</td>
					<td>Tổng hóa đơn</td>
					<td>Địa chỉ ship</td>
					<td>Thời gian ship</td>
					<td>Tình trạng xử lý</td>
					<td>Tình trạng ship</td>
					<td>Hình thức thanh toán</td>
					<td>Tình trạng thanh toán</td>
					<td class="functions" colspan="3">Chức năng</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listCarts}" var="carts">
					<tr>
						<td>${carts.cartId}</td>
						<td>${carts.cartDate}</td>
						<td>${carts.cartTotal}</td>
						<td>${carts.shipDate}</td>
						<td class="functions"><a href="javascript:void(0)"
							onclick="edit('',500,500);">Sửa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--<div class="form">
			<form>
				<input name="name" placeholder="What is your name?" class="name"
					required /> <input name="emailaddress"
					placeholder="What is your email?" class="email" type="email"
					required />
				<textarea rows="4" cols="50" name="subject"
					placeholder="Please enter your message" class="message" required></textarea>
				<input name="submit" class="btn" type="submit" value="Send" />
			</form>

		</div>-->
	</div>
</div>