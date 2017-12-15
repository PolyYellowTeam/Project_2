<%@ page pageEncoding="utf-8"%>
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
		<h1 style="margin-top: 2px; margin-bottom: 0;">Thêm mới tài khoản</h1>
	</div>
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon" style="cursor: pointer;"> <i
							onclick="QLBAdata()" class="icon-align-justify"></i> <script
								type="text/javascript">
								function QLBAdata() {
									location.href = 'account';
								}
							</script>
						</span>
						<h5>
							<a href="account">Quay lại</a>
						</h5>
					</div>
					<div class="widget-content nopadding">
						<form:form action="createacc" class="form-horizontal" method="post">
							<div class="form-actions">
								<label class="control-label" style="color: red;">${messageerrors }</label>
							</div>
							<div class="control-group">
								<label class="control-label">Tên đăng nhập :</label>
								<div class="controls">
									<input type="text" class="span11"
										placeholder="Nhập username..." name="username" /> <br>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Mật khẩu :</label>
								<div class="controls">
									<input type="password" class="span11"
										placeholder="Nhập mật khẩu..." name="password" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Quyền tài khoản :</label>
								<div class="controls">
									<select name="role">
										<option value="1">Admin</option>
										<option value="2">Nhân viên</option>
										<option value="3">Quản lý</option>
										<option value="0">Người dùng</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Trạng thái :</label>
								<div class="controls">
									<select name="status">
										<option value="true">Active</option>
										<option value="false">De-Active</option>
									</select>
								</div>
							</div>
							<div class="form-actions">
								<label class="control-label" style="color: red;">${message }</label>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-success">Save</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>