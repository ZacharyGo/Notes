


$('document').ready(function() {
	$('.table .btn')).on('click',function(event) {
		event.preventDefault();
		
		var href=$(this).attr('href');
		
		$.get(href, function(country, status) {
			$('#IdEdit').val(country.id);
			$('#countryName').val(country.name);
			$('#countryDescription').val(country.description);
			$('#countryCode').val(country.code);
			
		});
		$('#editModal').modal();
	});
	
	
}