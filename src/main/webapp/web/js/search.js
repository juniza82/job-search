function otherKeywordClickEventBinding() {
	
	$('.otherKeyword').click(function(event) {
		event.preventDefault();
		event.stopPropagation();
		var query = $(this).attr('href');
		$('#query').val(query);
		$('#searchForm').submit();
	});
	
}

function doPaging(paging) {
	
	event.preventDefault();
	event.stopPropagation();
	$('#paging').val(paging);
	$('#searchForm').submit();
	
}

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