

//订单查询
$(document).ready(function(){


	$("img.paystat").each(function(){
		var oldsrc=$(this)[0].src;
		var imgname=oldsrc.substr((oldsrc.length-6),2);
		if(imgname=="ok"){
			$(this).css({cursor:"default"});
		}
	});

	$("#showyun").attr("value",$("#nowshowyun")[0].value);
	$("#showok").attr("value",$("#nowshowok")[0].value);

	if($("#key")[0].value==""){
		$("#key")[0].value="餐品名称/订单号";
		$("#key").css({color:'#909090'});
		$("#key").click(function(){
			if($("#key")[0].value=="餐品名称/订单号"){
				$("#key")[0].value="";
				$("#key").css({color:'#505050'});
			}
		});
	}

	$("#searchbutton").mouseover(function(){
		if($("#key")[0].value=="餐品名称/订单号"){
			$("#key")[0].value="";
			$("#key").css({color:'#505050'});
		}
	});
	
});

