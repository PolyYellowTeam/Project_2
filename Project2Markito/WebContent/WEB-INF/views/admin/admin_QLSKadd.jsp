<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý
				keyword</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Thêm mới keyword</h1>
	</div>
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon" style="cursor: pointer;"> <i onclick="QLSKdata()"
							class="icon-align-justify"></i> <script type="text/javascript">
								function QLSKdata() {
									location.href = 'QLSKdata';
								}
							</script>
						</span>
						<h5><a href="QLSKdata">Quay lại</a></h5>
					</div>
					<div class="widget-content nopadding">
						<form:form action="saveSeo" class="form-horizontal"	modelAttribute="SEO" method="post">
							<div class="form-actions">
								<label class="control-label" style="color: red;">${messageerrors }</label>
							</div>
							<div class="control-group">
								<label class="control-label">Nội dung keyword</label>
								<div class="controls">
									<form:textarea class="span11"
										placeholder="Nhập nội dung keyword..." path="keyword" rows="4"
										cols="26" /><br>
									<form:errors style="color: red;" path="keyword" />
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