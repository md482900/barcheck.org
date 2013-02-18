// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

var set_stars = function(form_id, stars){
	for(i=1; i<=5;i++){
		if(i <= stars){
			$('#' + form_id + '_' + i).addClass('on');
		}
		else{
			$('#' + form_id+ '_'+i).removeClass('on');
		}
	}
}

$(function() {
	$('.rating_star').click(function(){
		var star = $(this);
		var form_id = star.attr('data-form-id');
		var stars = star.attr('data-stars');

		set_stars(form_id, stars);
		
		$('#' + form_id + '_stars').val(stars);
		
		$.ajax({
			type: "post"
			url: $('#' + form_id).attr('action'),
			data: $('#' + form_id).serialize()
		});
	});

	$('.star_rating_form').each(function(){
		var form_id = $(this).attr('id');
		var stars = $('#' + form_id + '_stars').val();
		set_stars(form_id, stars);
	});
});