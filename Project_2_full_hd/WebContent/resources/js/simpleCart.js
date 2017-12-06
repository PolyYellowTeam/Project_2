/**
 * Author: Vũ Ngọc Tuân
 * Created: 16/11/2017 2:17 PM
 * Description: Using ajax to make a simple cart
 */

$(document).ready(function() {
	$('.item_add').on('click', function(event) {
		console.log($('.item_add').val());
	});
	
	if ( typeof(Storage) !== "undefined") {
	    //set sesionStorage
	    sessionStorage.setItem('toidicode','Học lập trình online');
	    //get sessionStorage
	    console.log(sessionStorage.getItem('toidicode'));
	} else {
	    alert('Trình duyệt của bạn đã quá cũ.\n'
	    		+'Hãy nâng cấp trình duyệt ngay để có thể mua hàng trực tuyến!');
	}
});