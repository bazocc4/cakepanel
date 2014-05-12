$(document).ready(function(){
	// on thumbnail hover
	$('div#child-content').on('mouseenter','.photo',function(){
		$(this).find('.description').fadeIn('fast');		
	});
	
	$('div#child-content').on('mouseleave','.photo',function(){
		$(this).find('.description').fadeOut('fast');		
	});
	
	// insert into post
	$('table tr').hover(function(){
		$(this).find('a.insert-into-post').css('display', 'block');
	}, function(){
		$(this).find('a.insert-into-post').css('display', 'none');
	});
	
	// colorbox initialization !!
	$('#upload').colorbox({
		onLoad: function() {
		    $('#cboxClose').hide();
		}
	});
	$('.get-from-library').colorbox({
		onLoad: function() {
		    $('#cboxClose').hide();
		}
	});
	$('.get-from-table').colorbox({
		reposition: false,
		onLoad: function() {
		    $('#cboxClose').show();
		}
	});
		
	$(document).bind({
		cbox_complete: function(){
		// on thumbnail hover - popup
			$('div#upload-popup').on('mouseenter','.photo',function(){
				$(this).find('.description').fadeIn('fast');
			});
			
			$('div#upload-popup').on('mouseleave','.photo',function(){
				$(this).find('.description').fadeOut('fast');
			});
			
			$('.upload-popup .tabs > ul li a').on('click', function(e){
				e.preventDefault();
				
				// check if need to ajax or not...
				var willajax = 0;
				if($(this).attr('href') == "#tabs1" && !$(this).parent().hasClass('active'))
				{
					willajax = 1;
				}
								
				$('.upload-popup .tabs > ul li').removeClass('active');
				$(this).parent().addClass('active');
				
				var id_now = $(this).attr('href');
				$('.tabs-container').css('display', 'none');
				$(id_now).css('display', 'block');
				
				// ajax for insert media library...
				if(willajax == 1)
				{
					$.fn.ajax_mylink($(this),"popup-ajaxed" , null , "media" , "altforurl");
				}
			});
			
			$('div#upload-popup').on('click','.ajax_mymedia', function(e){
				e.preventDefault();
				if(!($(this).parent("li").hasClass("disabled") || $(this).parent("li").hasClass("active")))
				{				
					$.fn.ajax_mylink($(this),"popup-ajaxed" , null , "media");
				}
			});
			
			// close button event
			$('.upload-popup .sidebar-title .close').bind('click', function(){
				$.colorbox.close();
			});
		},
		cbox_closed : function(){
			this_element = '';
			$('div#upload-popup').on('mouseenter','.photo',function(){
				$(this).find('.description').fadeIn('fast');
			});
			
			$('div#upload-popup').on('mouseleave','.photo',function(){
				$(this).find('.description').fadeOut('fast');
			});
			
			if($('div.sidebar ul li a#media').hasClass('active'))
			{
				window.location = site + 'admin/entries/'+$('input#myTypeSlug').val();
			}
		}
	});
});