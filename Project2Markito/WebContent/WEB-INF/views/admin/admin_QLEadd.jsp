<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý
				nhân viên</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Thêm mới nhân viên</h1>
	</div>
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon" style="cursor: pointer;"> <i
							onclick="QLEdata()" class="icon-align-justify"></i> <script
								type="text/javascript">
								function QLEdata() {
									location.href = 'QLEdata';
								}
							</script>
						</span>
						<h5>
							<a href="QLEdata">Quay lại</a>
						</h5>
					</div>
					<div class="widget-content nopadding">
						<form:form action="saveEMP" class="form-horizontal"
							modelAttribute="EMP" method="post">
							<div class="form-actions">
								<label class="control-label" style="color: red;">${messageerrors }</label>
							</div>
							<div class="control-group">
								<label class="control-label">Username :</label>
								<div class="controls">
									<form:select path="accounts.username">
										<form:option value="--Chọn--"></form:option>
										<form:options items="${listAcc }" />
									</form:select>	
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Họ và tên :</label>
								<div class="controls">
									<form:input type="text" class="span11"
										placeholder="Nhập tên nhân viên..." path="fullname" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Giới tính :</label>
								<div class="controls">
									<form:select path="gender">
										<form:option value="">--Chọn--</form:option>
										<form:option value="Nam">Nam</form:option>
										<form:option value="Nữ">Nữ</form:option>
									</form:select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Địa chỉ :</label>
								<div class="controls">
									<form:input type="text" class="span11"
										placeholder="Nhập địa chỉ của nhân viên..." path="homeAddress" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email :</label>
								<div class="controls">
									<form:input type="text" class="span11"
										placeholder="Nhập email của nhân viên..." path="email" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Số điện thoại :</label>
								<div class="controls">
									<form:input type="text" class="span11"
										placeholder="Nhập số điện thoại của nhân viên..." path="phone" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Vai trò :</label>
								<div class="controls">
									<select name="roles">
										<option>--Chọn--</option>
										<option value="1">Nhân viên cấp 1</option>
										<option value="0">Nhân viên cấp 2</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Trạng thái :</label>
								<div class="controls">
									<select name="status">
										<option>--Chọn--</option>
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