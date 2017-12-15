function addToCart(productid) {
	$.ajax({
	url:
	'http://localhost:8080/Project2Markito/Carts/AddToCart?idProduct='+productid,
	type: 'POST',
	cache: false,
	dataType: 'text',
	success: function(result){
		switch (result) {
			case "true":
//				alert("Sản phẩm đã được thêm vào giỏ");
				break;
			case "false":
				alert("Thêm sản phẩm không thành công!\nĐã có lỗi xảy ra vui lòng thử lại sau\nhoặc liên hệ với quản trị viên qua:\nmarkitosp@gmail.com");
				break;
		}
	}
	})
};

function quantityUpdate (productid,action,quantity) {
	var url = '';
	if(productid){
		if(action){
			if(!quantity){
				url = 'http://localhost:8080/Project2Markito/Carts/QuantityUpdate?idProduct='+productid+'&action='+action+'&quantity=';
			}else{
				url = 'http://localhost:8080/Project2Markito/Carts/QuantityUpdate?idProduct='+productid+'&action='+action+'&quantity='+quantity;
			}
		}
	}

	$.ajax({
	url: url,
	type: 'POST',
	cache: false,
	contentType: "application/json; charset=utf-8",
	dataType: 'json',
	success: function(result){
		JSON.stringify(result);
		switch (result.status) {
			case 'false':
				alert('Cập nhật giỏ hàng không thành công');
				break;
			default:
				$('#'+productid+' .cart_quantity_input').val(result.cart_quantity_input);
				$('#'+productid+' .cart_total_price').text(result.cart_total_price);
				$('#'+productid+' .cart_product a').empty().append('<img src="'+result.cart_product+'" alt="">')
				$('#'+productid+' .cart_description h4 a').text(result.cart_description_a);
				$('#'+productid+' .cart_description p').html('Sale: '+result.cart_description_p+'%');
				$('#'+productid+' .cart_price p').text(result.cart_price);
				break;
		}
		
	}
	})
}

function setValueToUpdate (productid) {
	quantityUpdate (productid,'update',$('#'+productid+' .cart_quantity .cart_quantity_button input').val());
}

$(document).ready(function() {
	$('#payment-href').on('click', function() {
		$.ajax({
			url:'http://localhost:8080/Project2Markito/Carts/paymentCheck',
			type: 'POST',
			dataType: 'text',
			cache: false,
			success: function(result){
				switch (result) {
					case "true":
						alert("Oke");
						break;
					case "err":
						alert("Bạn phải đăng nhập để thanh toán");
						break;
				}
			}
		})
	});
});