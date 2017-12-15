<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý
				SEO-Keyword</a>
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
						<span class="icon">
							<img onclick="QLSKadd()" style="width: 12px; cursor: pointer;" src="images/created.png" />
						</span>
						<h5>
							<a href="QLSKadd">Thêm mới</a>
						</h5>
						<script type="text/javascript">
							function QLSKadd() {
								location.href = 'QLSKadd';
							}
						</script>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table">
							<thead>
								<tr>
									<th>Keyword</th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listSeo}" var="seo">
									<tr class="gradeA">
										<td>${seo.keyword}</td>
										<td style="text-align: center;"><a href="QLSKupdate?seoId=${seo.keywordId }">Sửa</a></td>
										<td style="text-align: center;">
											<a onclick="return confirm('Bạn có chắc chắn muốn xóa không?')"	href="deletaseo/${seo.keywordId }">Xoá</a>
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