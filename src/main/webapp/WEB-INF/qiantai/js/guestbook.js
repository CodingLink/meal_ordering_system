

//企业留言表单提交
$(document).ready(function(){
	$('#guestbookform').submit(function(){ 
		$('#guestbookform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'guestbook/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("您的留言已提交，我们会尽快回复","index.php");
				}else{
					$('div#notice').hide();
					alert(msg);
				}
			}
		}); 
       return false; 
   }); 
});


//头像选择切换
$(document).ready(function(){
	$('#headpicsel').change(function(){ 
		var hpic=this.value;
		if(hpic!=''){
			$('#headpic')[0].innerHTML='<img src="'+PDV_RP+'guestbook/templates/images/headpics/'+hpic+'.gif" border="0" />';
		}
	}); 
});


