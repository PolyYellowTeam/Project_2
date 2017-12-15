<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý
				banner</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Chỉnh sửa banners</h1>
	</div>
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon" style="cursor: pointer;"> <i onclick="QLBAdata()"
							class="icon-align-justify"></i> <script type="text/javascript">
								function QLBAdata() {
									location.href = 'QLBAdata';
								}
							</script>
						</span>
						<h5><a href="QLBAdata">Quay lại</a></h5>
					</div>
					<div class="widget-content nopadding">
						<form:form action="updateBA" class="form-horizontal"
							modelAttribute="BA" method="post">
							<div class="form-actions">
								<label class="control-label" style="color: red;">${messageerrors }</label>
							</div>
							<div class="control-group">
								<div class="controls">
									<form:hidden class="span11" placeholder="Nhập vị trí banner..."
										path="bannerId" readonly="true" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<form:input class="span11" placeholder="Nhập tên banner..."
										path="bannerName" />
										<br>
										<form:errors style="color: red;" path="bannerName" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Nội dung</label>
								<div class="controls">
									<form:textarea class="span11"
										placeholder="Nhập nội dung banner..." path="banner_content"
										rows="4" cols="26" />
										<br>
										<form:errors style="color: red;" path="banner_content" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Giảm giá :</label>
								<div class="controls">
									<form:input class="span11" placeholder="Nhập tên số % giảm giá..."
										path="sale_off" />
										<br>
										<form:errors style="color: red;" path="sale_off" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Hình ảnh</label>
								<div class="controls">
									<input type="file" name="bannerImgUrl" />
									<br>
										<form:errors style="color: red;" path="bannerImgUrl" />
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