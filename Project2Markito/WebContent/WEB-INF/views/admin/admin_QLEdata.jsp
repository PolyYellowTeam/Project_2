<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý
				Nhân viên</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Danh sách</h1>
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
					<div class="widget-title">
						<span class="icon"><img onclick="QLEadd()" style="width: 12px; cursor: pointer;" src="images/created.png" /></span>
						<h5><a href="QLEadd">Thêm mới</a></h5>
						<script type="text/javascript">
							function QLEadd() {
								location.href= 'QLEadd';
							}
						</script>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table">
							<thead>
								<tr>
									<th>Username</th>
									<th>Họ và tên</th>
									<th>Giới tính</th>
									<th>Địa chỉ</th>
									<th>Email</th>
									<th>Số điện thoại</th>
									<th>Vai trò</th>
									<th>Trạng thái</th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listEmp}" var="emp">
									<tr class="gradeA">
										<td style="text-align: center;">${emp.accounts.username}</td>
										<td style="text-align: center;">${emp.fullname}</td>
										<td>
											<c:choose>
												<c:when test="${emp.gender == 'Nam'}">Nam</c:when>
												<c:when test="${emp.gender == 'Nữ'}">Nữ</c:when>
											</c:choose>
										</td>
										<td>${emp.homeAddress}</td>
										<td style="text-align: center;">${emp.email}</td>
										<td style="text-align: center;">${emp.phone}</td>
										<td style="text-align: center;">
											<c:choose>
												<c:when test="${emp.roles == '1' }">Nhân viên cấp 1</c:when>
												<c:when test="${emp.roles == '0' }">Nhân viên cấp 2</c:when>
											</c:choose>
										</td>
										<td style="text-align: center;">${emp.status?'Active':'De-Active'}</td>
										<td style="text-align: center;"><a
											href="QLEupdate?empId=${emp.empId }">Sửa</a></td>
										<td style="text-align: center;"><a
											onclick="return confirm('Bạn có chắc chắn muốn xóa không?')"
											href="deleteemp/${emp.empId }">Xoá</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>