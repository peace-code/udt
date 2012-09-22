//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require twitter/bootstrap
//= require_tree .
$(document).ready(function() {
	$('#registeration_address').autocomplete({
		source: '/zipcodes.json',
		minLength: 2,
		delay: 1000,
		select: function(event, obj) {
			console.log(arguments);
			$('#registeration_sido').val(obj.item.sido);
			$('#registeration_gugun').val(obj.item.gugun);
			$('#registeration_dong').val(obj.item.dong);
		}
	})
})
	