<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý sản phẩm</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Danh sách sản phẩm</h1>
	</div>
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon"><i class="icon-th"></i></span>
						<h5>Data table</h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table">
							<thead>
								<tr>
									<th>Mã SP</th>
									<th>Tên sản phẩm</th>
									<th>Loại hàng</th>
									<th>Thương hiệu</th>
									<th>Đơn giá</th>
									<th>Số lượng</th>
									<th>Mô tả</th>
									<th>Trạng thái</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listProducts}" var="product">
									<tr class="gradeA">
										<td>${product.productId}</td>
										<td>${product.productName}</td>
										<td>${product.categories.categoryName}</td>
										<td>${product.suppliers.supplierName}</td>
										<td>${product.price}</td>
										<td class="center">${product.quantity}</td>
										<td>${product.describe}</td>
										<c:choose>
											<c:when test="${product.prStatus=='1'}">
												<td style="">Đang bán</td>
											</c:when>
											<c:otherwise>
												<td>Tạm ngưng</td>
											</c:otherwise>
										</c:choose>

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