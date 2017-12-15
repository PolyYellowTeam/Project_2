<%@page import="com.bean.BaseClass"%>
<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý đơn hàng</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Danh sách đơn hàng</h1>
	</div>
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon"><i class="icon-th"></i></span>
						<h5>Đơn chưa phân bổ</h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table">
							<thead>
								<tr>
									<th>#</th>
									<th>Nhân viên tiếp nhận</th>
									<th>Khách hàng</th>
									<th>Ngày tạo</th>
									<th>Địa chỉ ship</th>
									<th>Thời gian ship</th>
									<th>Tổng hóa đơn</th>
									<th>Trạng thái ship</th>
									<th>Hình thức thanh toán</th>
									<th>Trạng thái</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${cartList}" var="cart">
									<tr class="gradeA">
										<td>${cart.cartId}</td>
										<td>Chưa có nhân viên tiếp nhận</td>
										<td>${cart.getCustomers().getCustomerName()}</td>
										<td><fmt:formatDate type = "both" 
         dateStyle = "short" timeStyle = "short" value = "${cart.getCartDate()}" /></td>
         								<td>${cart.getShipAddress()}</td>
         								<td>${cart.getShipDate()}</td>
         								<td><fmt:formatNumber type="number" pattern="###,###" value="${cart.getCartTotal()}"/> VNĐ</td>
         								<td>${cart.getShipStatus()}</td>
         								<td>${cart.getPaymentMethod().getPaymentName()}</td>
         								<td>${cart.getCartStatus()}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon"> <i class="icon-align-justify"></i>
						</span>
						<h5>Thêm mới sản phẩm</h5>
					</div>
					<div class="widget-content nopadding">
						<form action="#" method="get" class="form-horizontal">
							<div class="control-group">
								<label class="control-label">Mã sản phẩm :</label>
								<div class="controls">
									<input type="text" class="span11"
										placeholder="Nhập mã sản phẩm..." />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Tên sản phẩm :</label>
								<div class="controls">
									<input type="text" class="span11"
										placeholder="Nhập tên sản phẩm..." />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Loại hàng</label>
								<div class="controls">
									<select>
										<option>First option</option>
										<option>Second option</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Thương hiệu</label>
								<div class="controls">
									<select>
										<option>First option</option>
										<option>Second option</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Đơn giá</label>
								<div class="controls">
									<div class="input-append">
										<input type="text" placeholder="5.000" class="span11">
										<span class="add-on">VNĐ</span>
									</div>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Số lượng :</label>
								<div class="controls">
									<input type="text" class="span11" placeholder="Số lượng..." />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Giảm giá</label>
								<div class="controls">
									<div class="input-append">
										<input type="text" placeholder="5.000" class="span11">
										<span class="add-on">%</span>
									</div>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Mô tả</label>
								<div class="controls">
									<textarea class="span11"></textarea>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Hình ảnh 1</label>
								<div class="controls">
									<input type="file" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Hình ảnh 2</label>
								<div class="controls">
									<input type="file" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Hình ảnh 3</label>
								<div class="controls">
									<input type="file" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Trạng thái</label>
								<div class="controls">
									<select>
										<option>Đang bán</option>
										<option>Chưa bán</option>
									</select>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-success">Save</button>
								<button type="submit" class="btn btn-primary">Reset</button>
								<button type="submit" class="btn btn-info">Edit</button>
								<button type="submit" class="btn btn-danger">Cancel</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>