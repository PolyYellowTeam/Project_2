<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<style type="text/css">
*[id$=errors]{
	color:red;
	font-style: italic;
	font-size: 16px;
	margin-left: 30px;
}
</style>
<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">Quản lý sản phẩm</a>
		</div>
		<h1 style="margin-top: 2px; margin-bottom: 0;">Quản lý sản phẩm</h1>
	</div>
	<div class="container-fluid">
		<hr style="margin-bottom: 4px; margin-top: 2px;">
		<div class="row-fluid">
			<div class="span12">				
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon"> <i class="icon-align-justify"></i>
						</span>
						<h5>Thêm mới sản phẩm<span style="margin-left: 30px;${status?'color:#5bb75b;':'color:#da4f49;'} font-size: 16px">${message}</span></h5>						
					</div>
					<div class="widget-content nopadding">
						<form:form action="mngproducts?addProduct" modelAttribute="product" enctype="multipart/form-data" method="post" class="form-horizontal" >
							<div class="control-group">
								<label class="control-label">Mã sản phẩm :</label>
								<div class="controls">
									<form:input type="text" class="span3" path="productId" placeholder="Nhập mã sản phẩm..." />
									<form:errors path="productId"/>																		
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Tên sản phẩm :</label>
								<div class="controls">
									<form:input type="text" class="span3" path="productName" placeholder="Nhập tên sản phẩm..." />
									<form:errors path="productName"/>	
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Loại hàng :</label>
								<div class="controls">
									<form:select path="categories.categoryId">
										<form:options items="${listCategories}" itemValue="categoryId" itemLabel="categoryName"></form:options>
									</form:select>
									<form:errors path="categories"/> 
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Thương hiệu :</label>
								<div class="controls">
									<form:select path="suppliers.supplierId">
										<form:options items="${listSuppliers}" itemValue="supplierId" itemLabel="supplierName"></form:options>
									</form:select>
									<form:errors path="suppliers.supplierId"/> 
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Đơn giá :</label>
								<div class="controls">
									<div class="input-append">
										<form:input type="text" path="price" placeholder="5.000" class="span11"></form:input>
										<span class="add-on">VNĐ</span>
										<form:errors path="price"/> 
									</div>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Số lượng :</label>
								<div class="controls">
									<form:input type="text" path="quantity" class="span3" placeholder="Số lượng..." />
									<form:errors path="quantity"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Giảm giá :</label>
								<div class="controls">
									<div class="input-append">
										<form:input type="text" path="discount" placeholder="5.000" class="span11"></form:input>
										<span class="add-on">%</span>
									</div>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Mô tả :</label>
								<div class="controls">
									<form:textarea path="describe" class="span3" style="height: 100px;"></form:textarea>
									<form:errors path="describe"/>									
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Hình ảnh 1 :</label>
								<div class="controls">
									<input type="file" name="upfile1"/>
									<p>${mesageImages}</p>							
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Hình ảnh 2 :</label>
								<div class="controls">
									<input type="file" name="upfile2"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Hình ảnh 3 :</label>
								<div class="controls">
									<input type="file" name="upfile3"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Trạng thái :</label>
								<div class="controls">
									<form:select path="prStatus">
										<form:option value="true">Đang bán</form:option>
										<form:option value="false">Chưa kinh doanh </form:option>
									</form:select>
									<form:errors path="prStatus"/>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-success">Save</button>
								<button type="reset" class="btn btn-primary">Reset</button>
								<a href="mngproducts" class="btn btn-danger">Cancel</a>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
