<%@page import="com.example.meal_ordering_system.entity.ShoppingCart"%>
<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<%@ page import="com.example.meal_ordering_system.entity.Menus" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>-我的订餐车</title>
	<meta content="" name=keywords />
	<meta content="" name=description />
	<link href="${pageContext.request.contextPath}/public/qiantai/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/public/qiantai/css/skin.css" rel="stylesheet" type="text/css" />
</head>
<body style='background:transparent'>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="left" valign="top">

			<jsp:include flush="fasle" page="top.jsp"/>
		</td>
	</tr>
	<tr >
		<td height="50px"></td>

	</tr>

	<tr>
		<td align="center" valign="top" height="420px">

			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td align="left" valign="top">


						<div align="center" >
							<table id="table2"   class="line_table" style="width: 700px; margin: 0; padding: 0" cellSpacing="0" cellPadding="0">
								<tbody style="margin: 0; padding: 0">
								<tr >
									<td class="line_table" align="center" colspan="4" >
										<span class="left_bt2">我的订餐信息列表</span></td>
								</tr>
								<tr >
									<td class="line_table" align="center" width="40%" ><span class="left_bt2">菜品名称</span></td>
									<td class="line_table" align="center" width="20%" ><span class="left_bt2">单价</span></td>
									<td class="line_table" align="center" width="20%"><span class="left_bt2">数量</span></td>
									<td class="line_table" align="center" width="20%"><span class="left_bt2">&nbsp;&nbsp;</span></td>
								</tr>
									<%
				    float sum1 = 0.0f;
					int sum2 = 0;
					List<ShoppingCart> shoppingcar = (List<ShoppingCart>) session.getAttribute("shoppingcar");
					if (shoppingcar!= null) {
						for (int i = 0; i < shoppingcar.size(); i++) {
							ShoppingCart sc=shoppingcar.get(i);
							sum1 = sum1+sc.getPrice()*sc.getSums();
							sum2 = sum2 +sc.getSums();
				  %>
								<tr>
									<td class="line_table" align="center" width="40%" ><span class="left_txt"><%=sc.getName() %></span></td>
									<td class="line_table" align="center" width="20%"><span class="left_txt"><%=sc.getPrice() %></span></td>
									<td class="line_table" align="center" width="20%"><span class="left_txt"><%=sc.getSums()%></span></td>
									<td class="line_table" align="center" width="20%"><a href="/orders/order_shoppingcardel?del=<%=i%>">取消</a></td>
								</tr>
									<%
						}
		              }

					 %>

								<tr   >
									<td class="line_table" align="center"  colspan="4" >
										<span class="left_bt2">小&nbsp;&nbsp;计：</span>&nbsp;
										<span  style="color:#ff0000;"><%=sum1 %></span>&nbsp;&nbsp;
										<span class="left_bt2">元</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="left_bt2">共：</span>&nbsp;
										<span  style="color:#ff0000;"><%=sum2 %></span>&nbsp;
										<span class="left_bt2">份</span>
									</td>

								</tr>

								<tr   >
									<td class="line_table" align="center"  colspan="4" valign="center">

										<a href="/orders/order_addshoppingcartoOrder"><img src="${pageContext.request.contextPath}/public/qiantai/images/canche_submit.gif" border="0" /></a>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

										<a href="/orders/order_addshoppingcartoOrder?remove=1"><img src="${pageContext.request.contextPath}/public/qiantai/images/quxiao2.gif" border="0" /></a>




									</td>

								</tr>
							</table>
						</div>




					</td>
				</tr>
			</table>



		</td>
	</tr>
	<tr>
		<td height="10px">&nbsp;</td>
	</tr>
	<tr>
		<td height="50px" align="center" valign="middle">

			<jsp:include flush="fasle" page="copyright.jsp"/>
		</td>
	</tr>

</table>



</body>
</html>
