jQuery(document).ready(function($) {
	$('.dropdown-menu').on('click', function(event) {
		$('.dropdown-menu .submenu').slideToggle(300);
	});
});