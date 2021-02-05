


//反馈表单提交
$(document).ready(function(){
	$('#feedbackform').submit(function(){ 
		$('#feedbackform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'feedback/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("您的留言已提交，我们会尽快和您联系","");
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').show();
					$().setBg();
				}
			}
		}); 
       return false; 

   }); 
});


//全站反馈表单提交
$(document).ready(function(){
	$('#feedbacksmallform').submit(function(){ 
		$('#feedbacksmallform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'feedback/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("您的留言已提交，我们会尽快和您联系","");
				}else{
					$('div#notice').hide();
					alert(msg);
				}
			}
		}); 
       return false; 

   }); 
});


