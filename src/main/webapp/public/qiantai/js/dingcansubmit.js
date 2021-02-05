
//购物车提交
$(document).ready(function() {
	$("div#cartsubmit").click(function(){
		
		var nowallnums=$("#allnums").html();  //餐车中的餐品总数量
		var nowcpprice=$("#cpprice").html();  //餐车中的餐品总价
	
		if(nowallnums>0 && nowcpprice>0){
			$.ajax({
				type: "POST",
				url:PDV_RP+"dingcan/post.php",
				data: "act=cartsubmit",
				success: function(msg){
					if(msg=="OK"){
						window.location=PDV_RP+'dingcan/startorder.php';
					}else if(msg=="kongcart"){
						alert("您的购物车中没有餐品");
					}else if(msg=="wrongcart"){
						alert("订单错误");
					}else{
						alert(msg);
					}
				}
			});
		}else{
			alert("对不起，提交失败！请确保您已正确选择了餐品并正确填写了份数！");
		}
	
	});
});
	
