function otherKeywordClickEventBinding() {
	
	$('.otherKeyword').click(function(event) {
		event.preventDefault();
		event.stopPropagation();
		var query = $(this).attr('href');
		$('#topQuery').val(query);
		$('#searchForm').submit();
	});
	
}

function doPaging(paging) {
	
	event.preventDefault();
	event.stopPropagation();
	$('#paging').val(paging);
	$('#searchForm').submit();
	
}

function setMyKeyword(keyword) {
	
	if(keyword != undefined && keyword != '' && keyword.replace(/^\s+|\s+$/gm,'') != '') {
		
		var myKeyword = $.cookie('my_keyword');
	    if(myKeyword != undefined && myKeyword != '' && myKeyword.replace(/^\s+|\s+$/gm,'') != '') {
	    	var array = myKeyword.split(",");
	    	var hasKeyword = false;
	    	for (i = 0; i < array.length ; i++) {
	    		if(array[i] == keyword) {
	    			hasKeyword = true;
	    		}
	    	}
	    	if(hasKeyword == false) {
	    		array.push(keyword);
	    		if(array.length > 5) {
	    			array.shift();
	    		}
	    		$.cookie('my_keyword', array.toString());
	    	}
	    } else {
	    	$.cookie('my_keyword', keyword);
	    }
	    
	}
    
}

$(document).ready(function() {
    
	$('#topSearch').click(function() {
		
		$('#searchForm').submit();
		
	});
		
	$('#searchForm').submit(function(event) {
		
		event.preventDefault();
	    var query = $('#topQuery').val();
		setMyKeyword(query);
	    this.submit();
	    
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
	
	var myKeyword = $.cookie('my_keyword');
    if(myKeyword != undefined && myKeyword != '' && myKeyword.replace(/^\s+|\s+$/gm,'') != '') {
    	$('#myKeywordArea').empty();
    	var array = myKeyword.split(",");
    	for (i = 0; i < array.length ; i++) {
    		$('#myKeywordArea').append("<li><span class='num'>" + (i + 1) + "</span><a href='" + array[i] + "' class='otherKeyword'>" + array[i] + "</a></li>");
    	}
    } else {
    	$('#myKeywordAreaDiv').hide();
    }

    otherKeywordClickEventBinding();
    
});