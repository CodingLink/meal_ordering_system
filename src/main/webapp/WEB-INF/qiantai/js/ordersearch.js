

$(document).ready(function(){

	$("#os_orderlook").click(function(){ 
		var orderno=$("#os_orderno")[0].value;
		var cname=$("#os_sname")[0].value;

		if(orderno=="" || cname==""){
			alert("请输入订单号和订餐人姓名");
			return false;
		}else{
			$.ajax({
				type: "POST",
				url:PDV_RP+"dingcan/post.php",
				data: "act=orderlook&orderno="+orderno+"&cname="+cname,
				success: function(msg){
					if(msg.substr(0,2)=="OK"){
						var md=msg.substr(3);
						window.location=PDV_RP+'dingcan/orderdetail.php?orderno='+orderno+'&md='+md;
					}else if(msg=="1000"){
						alert("订单不存在");
					}else{
						alert(msg);
					}
				}
			});
		}
	}); 

});


