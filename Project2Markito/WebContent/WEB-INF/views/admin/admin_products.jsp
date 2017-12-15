<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!--end-Footer-part-->
<style>
.pagination {
    background: #f2f2f2;
    padding: 20px;
    margin-bottom: 20px;
}
 
.page {
    display: inline-block;
    padding: 0px 9px;
    margin-right: 4px;
    border-radius: 3px;
    border: solid 1px #c0c0c0;
    background: #e9e9e9;
    box-shadow: inset 0px 1px 0px rgba(255,255,255, .8), 0px 1px 3px rgba(0,0,0, .1);
    font-size: .875em;
    font-weight: bold;
    text-decoration: none;
    color: #717171;
    text-shadow: 0px 1px 0px rgba(255,255,255, 1);
}
 
.page:hover, .page.gradient:hover {
    background: #fefefe;
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#FEFEFE), to(#f0f0f0));
    background: -moz-linear-gradient(0% 0% 270deg,#FEFEFE, #f0f0f0);
}
 
.page.active {
    border: none;
    background: #616161;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
    color: #f0f0f0;
    text-shadow: 0px 0px 3px rgba(0,0,0, .5);
}
 
.page.gradient {
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#f8f8f8), to(#e9e9e9));
    background: -moz-linear-gradient(0% 0% 270deg,#f8f8f8, #e9e9e9);
}
 
.pagination.dark {
    background: #414449;
    color: #feffff;
}
 
.page.dark {
    border: solid 1px #32373b;
    background: #3e4347;
    box-shadow: inset 0px 1px 1px rgba(255,255,255, .1), 0px 1px 3px rgba(0,0,0, .1);
    color: #feffff;
    text-shadow: 0px 1px 0px rgba(0,0,0, .5);
}
 
.page.dark:hover, .page.dark.gradient:hover {
    background: #3d4f5d;
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#547085), to(#3d4f5d));
    background: -moz-linear-gradient(0% 0% 270deg,#547085, #3d4f5d);
}
 
.page.dark.active {
    border: none;
    background: #2f3237;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .1);
}
 
.page.dark.gradient {
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#565b5f), to(#3e4347));
    background: -moz-linear-gradient(0% 0% 270deg,#565b5f, #3e4347);
}
</style>
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
		<div style="padding-top: 3.2px;"><a href="mngproducts?addProduct" class="btn btn-success" style="border-radius: 15px;">Thêm mới</a></div>
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box" style=" margin-top: 4px;">
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
									<th>Mã SP</th>
									<th>Tên sản phẩm</th>
									<th>Loại hàng</th>
									<th>Thương hiệu</th>
									<th>Đơn giá</th>
									<th>Số lượng</th>
									<th>Hình ảnh</th>
									<th>Mô tả</th>
									<th>Trạng thái</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listProducts}" var="product">
									<tr class="gradeA">
										<td style="text-align:-webkit-center;">${product.productId}</td>
										<td>${product.productName}</td>
										<td>${product.categories.categoryName}</td>
										<td>${product.suppliers.supplierName}</td>
										<td style="text-align:-webkit-center;">${product.price}</td>
										<td style="text-align:-webkit-center;">${product.quantity}</td>
										<td><img src="${product.picture1}" width=100px;/></td>
										<td>${product.describe}</td>
										<c:choose>
											<c:when test="${product.prStatus==true}">
												<td style="text-align:-webkit-center;"><p style="color:#5bb75b;font-weight: bold;">Đang kinh doanh</p></td>
											</c:when>
											<c:otherwise>
												<td style="text-align:-webkit-center;"><p style="color:#bd362f;font-weight: bold;">Tạm ngưng</p></td>
											</c:otherwise>
										</c:choose>
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
					<div class="pagination" style="margin: 0px;padding: 0px;text-align: -webkit-right;height: 22px;">
						<a href="mngproducts?pages=${pages-1}" class="page gradient">&laquo;</a>
						<c:forEach begin="1" end="${numbers/9+1}" varStatus="i">
						<a href="mngproducts?pages=${i.index}" class="page gradient">${i.index}</a>
						</c:forEach>
						<a href="mngproducts?pages=${pages+1}"class="page gradient">&raquo;</a>
					</div>
				</div>				
			</div>
		</div>
	</div>	
</div>

