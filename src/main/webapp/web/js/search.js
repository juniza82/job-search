$(document).ready(function() {
    
	$('#topSearch').click(function() {
		$('#searchForm').submit();
	});
	
	$('.totalAreaUlLi').click(function(event) { // 테스트 안한 메소드 
		event.preventDefault();
		event.stopPropagation();
		var collectionName = $(this).find('a').attr('href');
		$('#collection').val(collectionName);
		$('#searchForm').submit();
	});
	
	$('.totalAreaUlLiA').click(function(event) {
		event.preventDefault();
		event.stopPropagation();
		var collectionName = $(this).attr('href');
		$('#collection').val(collectionName);
		$('#searchForm').submit();
	});
	
});