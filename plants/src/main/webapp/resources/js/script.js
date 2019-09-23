/** member 레이아웃 메뉴 클릭 유지 스크립트 */
$(document).ready(function(){
	$('.mm-1').each(function(){
		
		var link = $(this).attr('href');
		var index = link.lastIndexOf('/');
		var linkName = link.substring(index+1);
		var url = location.href;
		var urlIndex = url.lastIndexOf('/');
		var urlName = location.href.substring(urlIndex+1);
		if(urlName == linkName){
			$(this).addClass('active');
		}
	})
	$('.mm-1').click(function(){
		console.log('test');
		$('.mm-1').removeClass('active');
	   $(this).addClass('active');
	 });
})

/** admin 레이아웃 메뉴 클릭 유지 스크립트 */
$(document).ready(function(){
	$('.am-1').each(function(){
		
		var link = $(this).attr('href');
		var index = link.lastIndexOf('/');
		var linkName = link.substring(index+1);
		var url = location.href;
		var urlIndex = url.lastIndexOf('/');
		var urlName = location.href.substring(urlIndex+1);
		if(urlName == linkName){
			$(this).addClass('active');
		}
	})
	$('.am-1').click(function(){
		console.log('test');
		$('.am-1').removeClass('active');
	   $(this).addClass('active');
	 });
})