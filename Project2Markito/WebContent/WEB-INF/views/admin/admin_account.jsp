<%@ page pageEncoding="utf-8"%>
<%@page import="com.Models.AccountsModel"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý
				tài khoản</a>
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
						<span class="icon"><img onclick="QLBAadd()"
							style="width: 12px; cursor: pointer;" src="images/created.png" /></span>
						<h5>
							<a href="create-account">Thêm mới</a>
						</h5>
						<script type="text/javascript">
							function QLBAadd() {
								location.href = 'create-account';
							}
						</script>
					</div>
					<%
						AccountsModel acc = new AccountsModel();
					%>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table">
							<thead>
								<tr>
									<th>Tên đăng nhập</th>
									<th>Mật khẩu</th>
									<th>Quyền tài khoản</th>
									<th>Trạng thái tài khoản</th>
									<th>Thao tác</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="<%=acc.getAll()%>" var="acc">
									<tr class="gradeA">
										<td>${acc.username}</td>
										<td>******</td>
										<td>${acc.roles?'Người dùng':'Quản lý'}</td>
										<td>${acc.status?'Active':'De-active'}</td>
										<td>
										<a href="${pageContext.request.contextPath }/update?un=${acc.username}">Sửa</a>
										</td>
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