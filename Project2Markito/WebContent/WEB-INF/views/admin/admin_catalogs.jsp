<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!--end-Footer-part-->
<!DOCTYPE html>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý Danh mục</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Danh sách danh mục</h1>
	</div>		
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box" style=" margin-top: 4px;width: 783px;">
					<div class="widget-title">
						<span class="icon" style="width: 25px;text-align: -webkit-center;"><i class="icon-th"></i></span>
						<form action="mngproducts?searchProduct" method="post">
								<div class="search_box" style="margin-bottom: 0px;padding-top: 3px;">
								<input type="text" placeholder="Tìm kiếm sản phẩm..." class="span2" name="keySearch">						
								</div>
						</form>													
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table">
							<thead>
								<tr>
									<th>Tên Danh mục</th>
									<th>Action</th>									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listCatalogs}" var="product">
									<tr class="gradeA">
										<td style="text-align:-webkit-center;">${product.productId}</td>										
										<td>
										<a style="border-radius: 15px;text-align:-webkit-center;" href="mngproducts?updateProduct&idProduct=${product.productId}" class="btn btn-primary"><span>Update</span></a><br>
										<a style="border-radius: 15px;width:50px;text-align:-webkit-center;margin-top: 10px;" href="mngproducts?deleteProduct&idProduct=${product.productId}" onclick="return confirm('Bạn muốn loại bỏ ${product.productName} ?')" class="btn btn-danger"><span>Delete</span></a>
											
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>				
				<div>					
				</div>				
			</div>
		</div>
	</div>	
</div>

