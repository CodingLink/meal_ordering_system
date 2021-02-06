<%@page import="com.example.meal_ordering_system.entity.Orders"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.example.meal_ordering_system.entity.Menus" %>
<%@ page import="com.example.meal_ordering_system.entity.Users" %>
<html>
<head>
	<link href="../public/admin/css/skin.css" rel="stylesheet" type="text/css" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body class="body">
<table width="100%" height="1" border="0" cellpadding="0"
	   cellspacing="0">
	<tr>
		<td width="17" valign="top" background="images/mail_leftbg.gif"><img
				src="images/left-top-right.gif" width="17" height="29" /></td>
		<td valign="top" background="images/content-bg.gif"><table
				width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
				class="left_topbg" id="table2">
			<tr>
				<td height="31"><div class="titlebt">类别信息</div></td>
			</tr>
		</table></td>
		<td width="16" valign="top" background="images/mail_rightbg.gif"><img
				src="images/nav-right-bg.gif" width="16" height="29" /></td>
	</tr>
	<tr>
		<td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
		<td valign="top" bgcolor="#F7F8F9">
			<div align="center">
				<table id="table2" class="line_table"
					   style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
					   cellPadding="0">
					<tbody style="margin: 0; padding: 0">
					<tr>
						<td class="line_table" align="center" colspan="8" height="20">
							<span class="left_bt2">本日销售额统计</span>
						</td>
					</tr>
					<tr>
						<td class="line_table" align="center" width="25%"><span
								class="left_bt2">菜品名称</span></td>
						<td class="line_table" align="center" width="25%"><span
								class="left_bt2">订购数量</span></td>
						<td class="line_table" align="center" width="25%"><span
								class="left_bt2">单价</span></td>
						<td class="line_table" align="center" width="25%"><span
								class="left_bt2">合计</span></td>
					</tr>

						<%
							 List<Orders> list=(List<Orders>)session.getAttribute("orderstatistic");
						     if (list!=null){
						    	float sum=0.0f;
						    	for(int i=0;i<list.size();i++){
						    		Orders order=list.get(i);
						    		Users users=order.getUsers();
									Menus menus=order.getMenus();
							%>
					<tr>
						<td class="line_table" align="center" width="25%"><span
								class="left_txt"><%=menus.getName()%></span></td>
						<td class="line_table" align="center" width="25%"><span
								class="left_txt"><%=order.getMenusum()%></span></td>
						<td class="line_table" align="center" width="25%"><span
								class="left_txt"><%=menus.getPrice1()%></span></td>
						<td class="line_table" align="center" width="25%"><span
								class="left_txt"><%=order.getMenusum()*menus.getPrice1()%>元</span></td>
					</tr>
						<%
								  sum = sum+order.getMenusum()*menus.getPrice1();
							     }
							%>
					<tr>
						<td class="line_table" align="center" colspan="8"><span
								class="left_bt2">本日销售总额：<%=sum%>元
								</span></td>
					</tr>

						<%
								}
							%>

				</table>
			</div>

		</td>

		<td background="images/mail_rightbg.gif">&nbsp;</td>
	</tr>
	<tr>
		<td valign="bottom" background="images/mail_leftbg.gif"><img
				src="images/buttom_left2.gif" width="17" height="17" /></td>
		<td background="images/buttom_bgs.gif"><img
				src="images/buttom_bgs.gif" width="17" height="17"></td>
		<td valign="bottom" background="images/mail_rightbg.gif"><img
				src="images/buttom_right2.gif" width="16" height="17" /></td>
	</tr>
</table>
</body>
</html>
