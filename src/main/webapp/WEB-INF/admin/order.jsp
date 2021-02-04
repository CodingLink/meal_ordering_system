<%@page import="com.apsfc.po.Order"%>
<%@page import="com.apsfc.dao.OrderDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<link href="css/skin.css" rel="stylesheet" type="text/css" />
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
						<td height="31"><div class="titlebt">订单信息</div></td>
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
								<td class="line_table" align="center" colspan="12"><span
									class="left_bt2">销售订单查询结果信息列表</span></td>
							</tr>
							<tr>
								<td class="line_table" align="center"><span
									class="left_bt2">用户ID</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">真实姓名</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">联系方式</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">家庭住址</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">菜品名称</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">订购数量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">单价(元)</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">合计(元)</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">订购时间</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">是否派送</span></td>
								<td class="line_table" align="center" colspan="2"><span
									class="left_bt2">确认订单</span></td>

							</tr>
						
								<%
								int currentpage=1;
								String str=(String)request.getParameter("currentpage");
								if(str!=null&&str!=""){
									currentpage=Integer.parseInt(str);
								}
							    OrderDao od=new OrderDao();
							    List<Order> list=od.pageList(currentpage,5);
							    for(int i=0;i<list.size();i++){
									Order order=list.get(i); 
							%>
                             <tr>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getUserid() %></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getRealname() %></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getPhone() %></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getAddress()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getMenuname()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getMenusum()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getPrice1() %></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getMenusum()*order.getPrice1() %></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=order.getTimes()%></span></td>
								<%
	                             str="";
	                             if(order.getDelivery()==1){
	                	            str="是";
	                            %>
								<td class="line_table" align="center"><span
									class="left_txt"><%=str%></span></td>
								<td class="line_table" align="center" colspan="2"><span
									class="left_txt">&nbsp;</span></td>
								<%
							     }else{
	                	          str="否";
	                            %>
								<td class="line_table" align="center"><span
									class="left_txt"><%=str%></span></td>

								<td class="line_table" align="center"><a
									href="../OrderServlet?id=<%=order.getId() %>&reqtype=delivery">确认</a></td>
								<td class="line_table" align="center"><a
									href="../OrderServlet?id=<%=order.getId()%>&reqtype=del">取消</a></td>
								<%} %>
							</tr>
							<%} %>
							<tr>
								<td class="line_table" align="center" colspan="12" height="20">
								<span class="left_bt2">第<%=od.getCurrentpage()%>页
										&nbsp;&nbsp;共<%=od.getTotalpage()%>页
								</span>&nbsp;&nbsp; 
								    <a href="?currentpage=0">[首页]</a>
								    <a href="?currentpage=<%=od.getTotalpage()%>">[尾页]</a>&nbsp;&nbsp; 
								    <a href="?currentpage=<%=od.getCurrentpage()-1%>">[上一页]</a>
									<a href="?currentpage=<%=od.getCurrentpage()+1%>">[下一页]</a>
									
								</td>
							</tr>
							
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