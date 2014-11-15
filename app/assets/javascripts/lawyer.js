$(document).ready(function(){
$("#search_lawyers").click(function(){$(".overlay-wrap").show();});

$("#city").on('keyup, keydown', function(){
	$("#city_id").val("");
});

$('#city').autocomplete({
	source: "/lawyers/city_autocomplete",
	minLength:2,
	delay:100,
	select: function(event, ui) {
			$("#city_id").val(ui.item.id);
			$(this).val(ui.item.label);
	}
});

$('#service').autocomplete({
	source: "/lawyers/service_autocomplete",
	minLength:2,
	delay:100,
	select: function(event, ui) {
			$(this).val(ui.item.name);
	}
});
});