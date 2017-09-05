$('document').ready(function(){

	//$('#menu').find('img').attr("src",$(this).attr('src').replace("60x40","80x80"));
	$('#menu').find('img').each(function(){
		var src = $(this).attr('src');

		var new_src = src.replace("60x40","80x80");

		// console.log(new_src);

		$(this).attr("src",new_src);

	});

});