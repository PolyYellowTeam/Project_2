function addToCart(productid) {
	$.ajax({
	url:
		$('span[id=site-url]').text()+'/Carts?AddToCart&idProduct='+productid,
	type: 'POST',
	cache: false,
	dataType: 'text',
	success: function(result){
		JSON.stringify(result);
		switch (result) {
			case "true":
				alert("Sản phẩm đã được thêm vào giỏ");
				break;
			case "false":
				alert("Thêm sản phẩm không thành công!\nĐã có lỗi xảy ra vui lòng thử lại sau\nhoặc liên hệ với quản trị viên qua:\nsupport@markito.xyz");
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
				url = $('span[id=site-url]').text()+'/Carts?QuantityUpdate&idProduct='+productid+'&action='+action+'&quantity=';
			}else{
				url = $('span[id=site-url]').text()+'/Carts?QuantityUpdate&idProduct='+productid+'&action='+action+'&quantity='+quantity;
			}
		}
	}
	var oldQuantity = $('#'+productid+' .cart_quantity .cart_quantity_button input').attr('currentQuantity');
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
				$('#'+productid+' .cart_quantity .cart_quantity_button input').val(oldQuantity);
				break;
			case 'deleted':
				$('#'+productid).remove();
				break;
			default:
				$('#'+productid+' .cart_quantity_input').val(result.cart_quantity_input);
				$('#'+productid+' .cart_total_price').text(result.cart_total_price);
				$('#'+productid+' .cart_product a').empty().append('<img src="'+result.cart_product+'" alt="">')
				$('#'+productid+' .cart_description h4 a').text(result.cart_description_a);
				$('#'+productid+' .cart_description p').html('Sale: '+result.cart_description_p+'%');
				$('#'+productid+' .cart_price p').text(result.cart_price);
				$('#'+productid+' .cart_quantity .cart_quantity_button input').attr('currentQuantity',result.cart_quantity_input);
				break;
		}
		
	}
	})
}

function cancelCart(cartId){
	$.ajax({
		url:$('span[id=site-url]').text()+'/Carts?cancelCart&cartId='+cartId,
		type: 'POST',
		dataType: 'json',
		cache: false,
		success: function(result){
			JSON.stringify(result);
			switch (result.status) {
				case "true":
					$('tr[id=crt'+cartId+']').remove();
					alert(result.Msg);
					break;
				case "false":
					alert(result.Msg);
					break;
			}
		}
	});
}

function setValueToUpdate (productid) {
	quantityUpdate (productid,'update',$('#'+productid+' .cart_quantity .cart_quantity_button input').val());
}

$(document).ready(function() {
	$('#payment-href').on('click', function() {
		$.ajax({
			url:$('span[id=site-url]').text()+'/Carts?paymentCheck',
			type: 'POST',
			dataType: 'json',
			cache: false,
			success: function(result){
				JSON.stringify(result);
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
	
	
	$('.total_area a[id=checkout]').on('click', function() {
		$.ajax({
			url:$('span[id=site-url]').text()+'/Carts?confirmCheckOut',
			type: 'POST',
			dataType: 'json',
			cache: false,
			success: function(result){
				switch(result.Status){
					case 'true':
						alert(result.Msg);
						$('html').load(document.URL);
						
						break;
					case 'false':
						alert(result.Msg);
						break;
				}
			}
		})
	});
});