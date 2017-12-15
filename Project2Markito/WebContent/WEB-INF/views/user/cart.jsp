<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Shopping Cart</li>
				</ol>
			</div>
			
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Mã đơn hàng</td>
							<td class="description">Ngày đặt</td>
							<td class="price">Tổng hóa đơn</td>
							<td class="quantity">Trạng thái đơn hàng</td>
							<td class="price">Thao tác</td>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${cartCheckedList.size() == 0}">
								<tr class="cart_product">
									<td class="cart_price"><span>Bạn chưa có đơn hàng đã đặt nào</span></td>
								</tr>
							</c:when>
							<c:when test="${empty cartCheckedList}">
								<tr class="cart_product">
									<td class="cart_price"><span>Bạn chưa có đơn hàng đã đặt nào</span></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${cartCheckedList}" var="cart">
									<tr style="margin-top: 20px;" id="crt${cart.cartId}">
										<td><span style="margin-left: 50px;">${cart.cartId}</span></td>
										<td><span><fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${cart.getCartDate()}" /></span></td>
										<td><fmt:formatNumber type="number" pattern="###,###" value="${cart.getCartTotal()}"/> VNĐ</td>
										<c:choose>
											<c:when test="${cart.getCartStatus() == 1}">
												<td>Đơn hàng đang đợi kiểm tra</td>
											</c:when>
											<c:when test="${cart.getCartStatus() == 5}">
												<td>Có thể thanh toán</td>
											</c:when>
										</c:choose>							
										<td class="cart_delete"><a class="cart_quantity_delete" onclick="cancelCart('${cart.cartId}');"
											href="javascript:void(0);"><i class="fa fa-times"></i></a></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			
			<div class="table-responsive cart_info" id="current-cart">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Sản phẩm</td>
							<td class="description"></td>
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Tổng tiền(Đã tính sale)</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${checkCart.size() == 0}">
								<tr class="cart_product">
									<td><span>Bạn chưa có sản phẩm nào trong giỏ</span></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${checkCart}" var="product">
									<tr id="${product.productId}">
										<td class="cart_product"><a href=""><img
												src="${pageContext.request.contextPath}/images/sanpham/aonam_01.jpg"
												alt=""></a></td>
										<td class="cart_description">
											<h4>
												<a href="">${product.productName}</a>
											</h4>
											<p>Sale: ${product.discount}%</p>
										</td>
										<td class="cart_price">
											<p><fmt:formatNumber type="number" pattern="###,###" value="${product.price}" /> VNĐ</p>
										</td>
										<td class="cart_quantity">
											<div class="cart_quantity_button">
												<a class="cart_quantity_up" href="javascript:void(0);" onclick="quantityUpdate('${product.productId}','plus');"> + </a> <input
													class="cart_quantity_input" id="changeQuantity" type="text" name="quantity"
													value="${product.quantity}" currentQuantity="${product.quantity}" autocomplete="off" size="2" onchange="setValueToUpdate('${product.productId}');" required="required"> <a
													class="cart_quantity_down" href="javascript:void(0);" onclick="quantityUpdate('${product.productId}','minus');"> - </a>
											</div>
										</td>
										<td class="cart_total">
											<p class="cart_total_price"><fmt:formatNumber type="number" pattern="###,###" value="${(product.price*((100-product.discount)/100))*product.quantity}" /> VNĐ</p>
										</td>
										<td class="cart_delete"><a class="cart_quantity_delete" onclick="quantityUpdate('${product.productId}','delete')"
											href="javascript:void(0);"><i class="fa fa-times"></i></a></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<!--/#cart_items-->
	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>Xác nhận đặt hàng</h3>
				<c:if test="${not empty Msg}">
					<h3 id="Msg">${Msg}</h3>
				</c:if>
			</div>
			<div class="row">
				<!-- <div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li><input type="checkbox"> <label>Use
									Coupon Code</label></li>
							<li><input type="checkbox"> <label>Use Gift
									Voucher</label></li>
							<li><input type="checkbox"> <label>Estimate
									Shipping and Taxes</label></li>
						</ul>
						<ul class="user_info">
							<li class="single_field"><label>Giờ:</label> <select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
							</select></li>
							<li class="single_field"><label>Phút:</label> <select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
							</select></li>
							<li class="zip-field"><label>Địa chỉ giao hàng:</label>
								<input type="text"></li>
						</ul>
						<a class="btn btn-default update" href="">Get Quotes</a> <a
							class="btn btn-default check_out" href="">Continue</a>
					</div>
				</div> -->
				<div class="col-lg-6">
					<div class="total_area">
						<ul>
							<li>Thời gian giao hàng:
								<span><input size="10" type="text"></span></li>
							<li class="zip-field">Địa chỉ giao hàng:
								<span><input type="text"></span></li>
							<li>Phí giao hàng<span>Free</span></li>
							<li>Total <span>$61</span></li>
						</ul>
						<!-- <a class="btn btn-default update" href="">Update</a> --> 
						<a class="btn btn-default check_out" href="javascript:void(0);">Xác nhận</a>
					</div>
				</div>
			</div>
		</div>
</section>