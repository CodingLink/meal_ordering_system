
//修改餐品份数时，先记录当前的份数
function giveModNums(cn){
	$("#modnums_b")[0].value=cn.value;
}


//修改餐品份数，并更新相应的餐品总份数和总价
function modNums(cn, perprice, mcent){
	
	var nowallnums=$("#allnums").html();  //餐车中的餐品总数量
	var nowcpprice=$("#span_tjine").html();  //餐车中的餐品总价
	var nowcent=$("#span_tcent").html();  //餐车中的积分总数
	
	var modnums_b=$("#modnums_b")[0].value;  //修改前的份数
	var modnums_a=cn.value;  //修改后的份数
	var modprice_b=perprice*modnums_b;  //修改前，当前餐品的总价
	var modprice_a=perprice*modnums_a;  //修改后，当前餐品的总价
	var modcent_b=mcent*modnums_b;  //修改前，当前餐品的总积分
	var modcent_a=mcent*modnums_a;  //修改后，当前餐品的总积分
	
	var cnid=cn.id;
	var cnid_arr=cnid.split("_");
	var goodstype=cnid_arr[1];
	var gid=cnid_arr[2];
	
	//判断所输入的份数值是否为正整数
	var r1= /^[0-9]*[1-9][0-9]*$/;
	if(!r1.test(modnums_a)){
		alert("订购数量错误");
		cn.value=modnums_b;
		return false;
	}
	
	if(modnums_a>0){
		//判断单个餐品的库存量
		$.ajax({
			type: "POST",
			url:PDV_RP+"dingcan/post.php",
			data: "act=checkKucunDan&goodstype="+goodstype+"&gid="+gid+"&modnums="+modnums_a,
			success: function(msg){
				if(msg=="OK"){
					$("#jine_"+gid).html(modprice_a.toFixed(2));  //修改后，当前餐品小计
					$("#cent_"+gid).html(modcent_a);  //修改后，当前餐品积分小计
					$("#span_tcent").html(parseFloat(nowcent)-parseFloat(modcent_b)+parseFloat(modcent_a));  //修改后，所选餐品积分总计
					$("#allnums").html(parseFloat(nowallnums)-parseFloat(modnums_b)+parseFloat(modnums_a));
					$("#span_tjine").html((parseFloat(nowcpprice)-parseFloat(modprice_b)+parseFloat(modprice_a)).toFixed(2));
					$("#tjine")[0].value=(parseFloat(nowcpprice)-parseFloat(modprice_b)+parseFloat(modprice_a)).toFixed(2);
					
					//计算运费
					accountYunFei('qhold');
					getPaymethodIntro();
					
					//修改相应的cookie
					$.ajax({
						type: "POST",
						url:PDV_RP+"setcookie.php",
						data: "act=setcookie&cookietype=modi&cookiename=DINGCANCART&goodstype="+goodstype+"&gid="+gid+"&nums="+modnums_a+"&fz=",
						success: function(msg){
							if(msg=="OK"){
								//window.location=PDV_RP+'shop/cart.php';
							}else if(msg=="1000"){
								alert("订购数量错误");
							}else{
								alert(msg);
							}
						}
					});
				}else{
					alert(msg);
					cn.value=modnums_b;
					return false;
				}
			}
		});
	}else{
		alert("对不起，所填数量必须大于0");
		cn.value=modnums_b;
		return false;
	}

}


//删除当前的所选餐品
function delOne(did, perprice){

	var nowallnums=$("#allnums").html();  //餐车中的餐品总数量
	var nowcpprice=$("#span_tjine").html();  //餐车中的餐品总价
	
	var did_arr=did.split("_");
	var goodstype=did_arr[1];
	var gid=did_arr[2];
	var delnumsid="cpnums_"+goodstype+"_"+did_arr[2];
	var delnums=$("#"+delnumsid)[0].value;  //删除所选餐品后，需减去的相应份数
	var delprice=perprice*delnums; //删除所选餐品后，需减去的相应金额
	
	$("#allnums").html(parseFloat(nowallnums)-parseFloat(delnums));
	$("#span_tjine").html((parseFloat(nowcpprice)-parseFloat(delprice)).toFixed(2));
	
	if($("#allnums").html()<="0"){$("#allnums").html("0");}
	if($("#span_tjine").html()<="0"){$("#span_tjine").html("0");}
	
	$('tr#'+did).remove();
	
	$().setBg();
	
	//删除相应的cookie
	$.ajax({
		type: "POST",
		url:PDV_RP+"setcookie.php",
		data: "act=setcookie&cookietype=del&cookiename=DINGCANCART&goodstype="+goodstype+"&gid="+gid+"&nums="+delnums+"&fz=",
		success: function(msg){
			if(msg=="OK"){
				//window.location=PDV_RP+'shop/cart.php';
			}else if(msg=="1000"){
				alert("订购数量错误");
			}else{
				alert(msg);
			}
		}
	});
	
}


//判断是否登录分别处理
$(document).ready(function(){
	
	$.ajax({
		type: "POST",
		url:PDV_RP+"post.php",
		data: "act=isLogin",
		success: function(msg){
			if(msg=="1"){
				$("div#notLogin").hide();
				$("div#isLogin").show();
				$("span#username").html(getCookie("MUSER"));

				//获取历史资料
				$.ajax({
					type: "POST",
					url:PDV_RP+"dingcan/post.php",
					data: "act=getmemberinfo",
					success: function(msg){
						eval(msg);
						$("#name")[0].value=M.N;
						$("#tel")[0].value=M.T;
						$("#mov")[0].value=M.V;
					}
				});
				$().setBg();
			}else{
				$("div#isLogin").hide();
				$("div#notLogin").show();
				$('.loginlink').click(function() { 
					$().orderMemberLogin(1);
				});
				$().setBg();
			}
		}
	});
});


//会员退出
$(document).ready(function(){
	
	$('.logoutlink').click(function(){ 
		
		$.ajax({
			type: "POST",
			url: PDV_RP+"post.php",
			data: "act=memberlogout",
			success: function(msg){
				if(msg=="OK"){
					window.location='startorder.php';
				}else{
					alert(msg);
				}
			}
		});
	

   }); 
});


//获取弹出式登录框
(function($){
	$.fn.orderMemberLogin = function(act){
		
		//获取登录表单
		$.ajax({
			type: "POST",
			url:PDV_RP+"member/post.php",
			data: "act=getpoploginform&RP="+PDV_RP,
			success: function(msg){
				
				$('html').append(msg);
				$.blockUI({message: $('div#loginDialog'),css:{width:'300px'}}); 
				$('.pwClose').click(function() { 
					if(act=="1"){
						$.unblockUI(); 
						$('div#loginDialog').remove();
					}else{
						window.location.reload();
					}
					
				}); 

				$('img#zhuce').click(function() { 
					$.unblockUI(); 
					window.location=PDV_RP+"member/reg.php";
				}); 

				$("img#fmCodeImg").click(function () { 
					$("img#fmCodeImg")[0].src=PDV_RP+"codeimg.php?"+Math.round(Math.random()*1000000);
				 });

				 $('#LoginForm').submit(function(){ 

					$('#LoginForm').ajaxSubmit({
						target: 'div#loginnotice',
						url: PDV_RP+'post.php',
						success: function(msg) {
							if(msg=="OK" || msg.substr(0,2)=="OK"){
								$('div#loginnotice').hide();
								$.unblockUI(); 
								$('div#loginDialog').remove();
								window.location.reload();
							}else{
								$('div#loginnotice').show();
							}
						}
					}); 
			   
				return false; 

			 }); 


			}
		});

		
	};
})(jQuery);


$(document).ready(function(){
	
	//获取一级配送区域
	$.ajax({
		type: "POST",
		url:PDV_RP+"dingcan/post.php",
		data: "act=getyunzone&pid=0",
		success: function(msg){

			$("#yunzone").append(msg);

			//一级选择时获取二级配送区域
			$("#yunzone").change(function(){
				var pid=$("#yunzone")[0].value;
				if(pid!=0){
					$.ajax({
						type: "POST",
						url:PDV_RP+"dingcan/post.php",
						data: "act=getyunzone&pid="+pid,
						success: function(msg){
							if(msg!=""){
								$("#subzone").html(msg).show();
								$("#zoneid")[0].value=$("#subzone")[0].value;
																
								//计算运费
								accountYunFei();
								getPaymethodIntro();

								$("#subzone").change(function(){
									$("#zoneid")[0].value=$("#subzone")[0].value;
									
									//计算运费
									accountYunFei();
									getPaymethodIntro();
								});
								$().setBg();
								
							}else{
								//计算运费
								accountYunFei();
								getPaymethodIntro();
							}
						}
					});
					
				}else{
					$("#subzone").hide();
					$("#zoneid")[0].value="0";
					//计算运费
					accountYunFei();
					getPaymethodIntro();
					$().setBg();
				}
			});

		}
	});

	//初始获取付款方法
	$.ajax({
		type: "POST",
		url:PDV_RP+"dingcan/post.php",
		data: "act=getpaymethod",
		success: function(msg){
			$("#payid").html(msg);
			
			//获取初始支付说明
			getPaymethodIntro();

			$("#payid").change(function(){
				getPaymethodIntro();
			});

		}
	});
	
	//初始送餐时间
	var tcent=$("#span_tcent").html();
	$.ajax({
		type: "POST",
		url:PDV_RP+"dingcan/post.php",
		data: "act=getsctime&tcent="+tcent,
		success: function(msg){
			var msg_arr=msg.split("_");
			$("#sctime").html(msg_arr[3]);
			if(msg_arr[0]==1){
				$("#centinfo").html("选择此时段的积分比例为<font style='color:#ff6600;font-weight:bold;'>"+msg_arr[1]+"</font>，该订单的所获积分为<font style='color:#ff6600;font-weight:bold;'>"+msg_arr[2]+"</font>");
			}
		}
	});

});


//获取支付说明
function getPaymethodIntro(){
	var payid=$("#payid")[0].value;
	if(payid=="0"){
		$.ajax({
			type: "POST",
			url:PDV_RP+"dingcan/post.php",
			data: "act=getmemberaccount",
			success: function(msg){
				if(msg=="0"){
					$("#payintro_text").html("您尚未登录");
				}else{
					var ordertotal=$("span#ordertotal").html();
					if(Number(ordertotal)>Number(msg)){
						$("#payintro_text").html("您的会员帐户余额：<span id='memberaccount'>"+msg+"</span> 元，会员帐户余额不足<br />请选择线下支付，或进行账户充值");
					}else{
						$("#payintro_text").html("您的会员帐户余额：<span id='memberaccount'>"+msg+"</span> 元，您可以提交订单并从会员帐户扣款支付订单");
					}
				}
				$().setBg();
			}
		});
	}else{
		$.ajax({
			type: "POST",
			url:PDV_RP+"dingcan/post.php",
			data: "act=getpaymethodintro&payid="+payid,
			success: function(msg){
				$("#payintro_text").html(msg);
				$().setBg();
			}

		});
	}
}


//读取当前会员使用过的地址
$(document).ready(function(){
	
	var tjine=$("#tjine")[0].value;
	var iflogin=$("#ifmemberlogin")[0].value;
	
	$.ajax({
		type: "POST",
		url:PDV_RP+"dingcan/post.php",
		data: "act=getmemberarea&tjine="+tjine,
		success: function(msg){
			if(iflogin==1){
				if(msg!=""){
					$("#oldarea").html(msg);
					
					//计算运费
					accountYunFei('qhold');
					getPaymethodIntro();
				}else{
					$("#memberareatype")[0].checked=false;
					$("#memberareatype2")[0].checked=true;
					$("#tr_oldarea").hide();
					$("#tr_jaddress").show();
					$("#yunzone").show();
					$("#tr_xaddress").show();
					
					$("#ifmemberlogin")[0].value=0;
					//计算运费
					accountYunFei('qhnew');
					getPaymethodIntro();
				}
			}else{
				//计算运费
				accountYunFei('qhold');
				getPaymethodIntro();
			}
		}
	});
	
});


//填写区域时的选择判断
$(document).ready(function(){
	$("#xaddress")[0].readOnly=true;
	$("#sarea").click(function(){
		if($("#sarea")[0].checked==true){
			$("#yunzone")[0].disabled=false;
			$("#subzone")[0].disabled=false;
			$("#jaddress")[0].readOnly=false;
			$("#xaddress")[0].readOnly=true;
			
			//计算运费
			accountYunFei();
			getPaymethodIntro();
		}
	});
	
	$("#warea").click(function(){
		if($("#warea")[0].checked==true){
			$("#yunzone")[0].disabled=true;
			$("#subzone")[0].disabled=true;
			$("#jaddress")[0].readOnly=true;
			$("#xaddress")[0].readOnly=false;
			
			//计算运费
			accountYunFei();
			getPaymethodIntro();
		}			
	});
});


//会员登录状态下，判断是使用原来的地址，还是填写新的地址
$(document).ready(function(){
	
	$("#tr_jaddress").hide();
	$("#subzone").hide();
	$("#tr_xaddress").hide();
	
	if($("#ifmemberlogin")[0].value==1){
		$("#yunzone").hide();
	}else{
		$("#yunzone").show();
	}
	
	$("#memberareatype").click(function(){
		if($("#memberareatype")[0].checked==true){
			var yunzonevalue=$("#yunzone")[0].value;
			
			$("#tr_oldarea").show();
			$("#tr_jaddress").hide();
			$("#yunzone").hide();
			$("#tr_xaddress").hide();
			if(yunzonevalue==0){
				$("#subzone").hide();
			}else{
				$("#subzone").show();
			}
			
			$("#ifmemberlogin")[0].value=1;
			//计算运费
			accountYunFei('qhold');
			getPaymethodIntro();
		}			
	});
	
	$("#memberareatype2").click(function(){
		if($("#memberareatype2")[0].checked==true){
			$("#tr_oldarea").hide();
			$("#tr_jaddress").show();
			$("#yunzone").show();
			$("#tr_xaddress").show();
			
			$("#ifmemberlogin")[0].value=0;
			//计算运费
			accountYunFei('qhnew');
			getPaymethodIntro();
		}			
	});
	
});


//计算运费
function accountYunFei(obj){

	var tjine=$("#tjine")[0].value;
	var zoneid=$("#zoneid")[0].value;
	
	if($("#ifmemberlogin")[0].value==0){
		//非会员状态下，直接根据所选择的地址填写方式计算运费
		if($("#sarea")[0].checked==true){
			var areatype=1;
		}else if($("#warea")[0].checked==true){
			var areatype=2;
		}
	}else{
	
		//会员登录状态下，在选择使用原来的地址时，根据点击不同的地址计算运费
		if($("#memberareatype")[0].checked==true){
			if(obj==0){
				var areatype=2;
				var zoneid=0;
			}else{
				var areatype=1;
				var zoneid=obj;
			}
		}
		
		//会员登录状态下，在从“使用新地址”切换到“使用原来的地址”时重新计算运费
		if(obj=='qhold'){
			var getObj=$("input[name='oldarea']");
			for(var i=0; i<getObj.length; i++){
				if(getObj[i].checked==true){
					var id_arr=getObj[i].id.split("_");
					var zoneid=id_arr[1];
					if(zoneid==0){
						var areatype=2;
					}else{
						var areatype=1;
					}
				}
			}
		}
		
		//会员登录状态下，在从“使用原来的地址”切换到“使用新地址”时重新计算运费
		if(obj=='qhnew'){
			if($("#sarea")[0].checked==true){
				var areatype=1;
			}else if($("#warea")[0].checked==true){
				var areatype=2;
			}
		}
		
	}

	$.ajax({
		type: "POST",
		url:PDV_RP+"dingcan/post.php",
		data: "act=accountyunfei&areatype="+areatype+"&zoneid="+zoneid+"&tjine="+tjine,
		success: function(msg){
			$("#span_yunfei").html(msg);
			
			//计算订单总价
			var ordertotal=adv_format(Number($("input#tjine")[0].value)+Number(msg),2);
			$("#ordertotal").html(ordertotal);
		}
	});
}


//浮点计算
function adv_format(value,num){
	var a_str = formatnumber(value,num);
	var a_int = parseFloat(a_str);
	if (value.toString().length>a_str.length){
		var b_str = value.toString().substring(a_str.length,a_str.length+1);
		var b_int = parseFloat(b_str);
		if (b_int<5){
			return a_str;
		}else{
			var bonus_str,bonus_int;
			if (num==0){
				bonus_int = 1;
			}else{
				bonus_str = "0.";
				for (var i=1; i<num; i++){
					bonus_str+="0";
				}
				bonus_str+="1";
				bonus_int = parseFloat(bonus_str);
			}
			a_str = formatnumber(a_int + bonus_int, num);
		}
	}
	return a_str;
}

//直接去尾
function formatnumber(value,num){
	var a,b,c,i;
	a = value.toString();
	b = a.indexOf('.');
	c = a.length;
	if (num==0){
		if (b!=-1){
			a = a.substring(0,b);
		}
	}else{
		if(b==-1){
			a = a + ".";
			for (i=1;i<=num;i++)
				a = a + "0";
		}else{
			a = a.substring(0,b+num+1);
			for (i=c;i<=b+num;i++){
				a = a + "0";
			}
		}
	}
	return a;
}


//积分计算－进入订单页面时的初始提示
$(document).ready(function(){
	$('#sctime').change(function(){ 
		var sctimeid=$("#sctime")[0].value;
		var tcent=$("#span_tcent").html();
		
		$.ajax({
			type: "POST",
			url:PDV_RP+"dingcan/post.php",
			data: "act=accountCent&sctimeid="+sctimeid+"&tcent="+tcent,
			success: function(msg){
				eval(msg);
				if(M.L==1){
					$("#centinfo").html("选择此时段的积分比例为<font style='color:#ff6600;font-weight:bold;'>"+M.R+"</font>，该订单的所获积分为<font style='color:#ff6600;font-weight:bold;'>"+M.C+"</font>");
				}
				
			}
		});
		
	});
});


//提交订单
$(document).ready(function(){
	$('#OrderForm').submit(function(){ 
		
		if($("#tjine")[0].value=="" || Number($("#tjine")[0].value)<0){
			alert("您的购物车中没有餐品或餐品金额错误，不能提交订单");
			return false;
		}
		
		//送餐地址判断
		if($("#ifmemberlogin")[0].value==1 && $("#memberareatype")[0].checked==true){  //会员登录状态下，使用原来地址的判断
		
			var getObj=$("input[name='oldarea']");
			var kk=0;
			for(var i=0; i<getObj.length; i++){
				if(getObj[i].checked==true){
					kk++;
				}
			}
			if(kk!=1){
				alert("请正确选择送餐地址");
				return false;
			}
			
		}else{  //非会员状态下，以及会员登陆状态下填写新地址时的判断
		
			if($("#sarea")[0].checked==true){
				if($("#yunzone")[0].value=="0" || $("#yunzone")[0].value==""){
					alert("请选择送餐区域");
					return false;
				}
			
				if($("#zoneid")[0].value=="0"){
					alert("请选择送餐区域");
					return false;
				}
					
				if($("#jaddress")[0].value==""){
					alert("请填写具体地址");
					return false;
				}
			}
				
			if($("#warea")[0].checked==true){
				if($("#xaddress")[0].value==""){
					alert("请填写详细地址");
					return false;
				}
			}
				
		}
		
		if($("#name")[0].value==""){
			alert("请填写客户名称");
			return false;
		}

		var p=$("#tel")[0].value;
		var m=$("#mov")[0].value;
		if(p=="" && m==""){
			alert("联系电话和手机号码，必须至少填写一个");
			return false;
		}else{
			if(m!=""){  //手机号码判断
				if(m.length<10){
					alert("请输入正确的手机号码，如：13912345678");
					return false;
				}
			}
		}

		if($("#payid")[0].value==""){
			alert("请选择付款方式");
			return false;
		}
		
		if($("#sctime")[0].value==""){
			alert("请选择送餐时段");
			return false;
		}

		$('#OrderForm').ajaxSubmit({
			target: 'div#notice',
			url: 'post.php',
			success: function(msg) {
				if(msg.substr(0,2)=="OK"){
					
					//清除cookie
					$.ajax({
						type: "POST",
						url:PDV_RP+"setcookie.php",
						data: "act=setcookie&cookietype=empty&cookiename=DINGCANCART",
						success: function(msg){
						}
					});

					$('div#notice').hide();
					
					//判断是否支付
					if(msg.substr(3,5)=="PAYED"){
						var orderid=msg.substr(9);
						$().alertwindow("您的订单已提交并付款成功，我们会尽快为您送餐","orderdetail.php?orderid="+orderid);
					}else{
						var msg_arr=msg.split("_");
						var md=msg_arr[1];
						var orderid=msg_arr[2];
						//window.location="orderpay.php?orderid="+orderid;
						$().alertwindow("您的订单已提交成功，我们会尽快为您送餐","orderdetail.php?orderid="+orderid+"&md="+md);
					}

				}else if(msg=="1000"){
					$('div#notice').hide();
					alert("您的购物车中没有餐品");
				}else if(msg=="1001"){
					$('div#notice').hide();
					alert("请正确选择送餐地址");
				}else if(msg=="1002"){
					$('div#notice').hide();
					alert("请选择送餐区域");
				}else if(msg=="1003"){
					$('div#notice').hide();
					alert("请填写具体地址");
				}else if(msg=="1004"){
					$('div#notice').hide();
					alert("请填写详细地址");
				}else if(msg=="1005"){
					$('div#notice').hide();
					alert("请选择付款方式");
				}else if(msg=="1006"){
					$('div#notice').hide();
					alert("您尚未登录，不能从会员帐户扣款支付订单");
				}else if(msg=="1007"){
					$('div#notice').hide();
					alert("页面超时，请重新选择送餐时段");
					//重新初始送餐时间
					var tcent=$("#span_tcent").html();
					$.ajax({
						type: "POST",
						url:PDV_RP+"dingcan/post.php",
						data: "act=getsctime&tcent="+tcent,
						success: function(msg){
							var msg_arr=msg.split("_");
							$("#sctime").html(msg_arr[3]);
							if(msg_arr[0]==1){
								$("#centinfo").html("选择此时段的积分比例为<font style='color:#ff6600;font-weight:bold;'>"+msg_arr[1]+"</font>，该订单的所获积分为<font style='color:#ff6600;font-weight:bold;'>"+msg_arr[2]+"</font>");
							}
						}
					});
				}else if(msg=="1008"){
					$('div#notice').hide();
					alert("您的会员账户余额不足，请选择线下支付或进行账户充值");
				}else if(msg=="1009"){
					$('div#notice').hide();
					alert("联系电话和手机号码，必须至少填写一个");
				}else if(msg=="kongcart"){
					$('div#notice').hide();
					alert("您的购物车中没有餐品");
				}else if(msg=="wrongcart"){
					$('div#notice').hide();
					alert("订单错误");
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




