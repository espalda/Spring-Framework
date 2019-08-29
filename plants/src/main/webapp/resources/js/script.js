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

/** summer note */
 $(document).ready(function(){
  $('#summernote').summernote({
    placeholder: '내용을 입력해주세요',
    tabsize: 2,
    height: 300,
    lang: 'kr-KRs'
  });
 })
/** id 입력창에 마우스 커서가 자동 포커스 기능 */
 $(document).ready(function(){
	$('input[name=id]').focus();
})