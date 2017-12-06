function edit(url,width,height) {
	window.open(url, "_blank", "toolbar=no,scrollbars=yes,resizable=no,top=50,left=500,width="+width+",height="+height);
}; 

$(document).ready(function() {
	$('.dropdown-menu').on('click', function(event) {
		$('.dropdown-menu .submenu').slideToggle(300);
	});
});