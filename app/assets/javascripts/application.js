// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).on('change', '#pin_link', function() {
 	// var url = $('#pin_link').val();
	// var request = "http://ajax.googleapis.com/ajax/services/search/web?q="+url+"&v=1.0&callback=?";

	// var image = '<img src="https://api.thumbalizr.com/?url='+url+'&width=250"/>';
	// var link_to_image = 'https://api.thumbalizr.com/?url='+url+'&width=250';

	// $('#previewImage').append(image);
	// $('#api_image').val(link_to_image);

	// $.getJSON(request, function (data) {
	// 	//alert(data.responseData.results[0].titleNoFormatting);
	//   	$("#pin_title").val(data.responseData.results[0].titleNoFormatting);
	// });
	
	if (!window.location.origin)
  		window.location.origin = window.location.protocol+"//"+window.location.host;

	var pathname = window.location.origin;

	var url = $('#pin_link').val();
	var request = ""+pathname+"/pins/metadata";

	var meta_url = {'url' : url};

	$.ajax({
	    url: request,
	    type: 'POST',
	    data: meta_url ,
	    success: function(resp){ 
	    	$("#previewImage").prepend('<img src="'+resp[0]+'"/>');

	    	console.log(resp[0]);

	    	$("#pin_image").val(resp[0]);
	    	$("#pin_title").val(resp[1]);
	     }
	});

});


$(document).on('change', '#accept_file', function() {
	if($('#accept_file').is(':checked')){
		$('.upload_file').show();
		$('#previewImage').hide();
	}
	else{
		$('.upload_file').hide();
		$('#previewImage').show();
	}
});



