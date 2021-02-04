<%@page import="com.example.meal_ordering_system.entity.Menus"%>
<%@page import="com.example.meal_ordering_system.dao.MenusDao"%>
<%@page import="java.util.*"%>
<%@ page language="java"  pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/skin.css" rel="stylesheet" type="text/css" />
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
						<td height="31"><div class="titlebt">菜单信息</div></td>
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
								<td class="line_table" align="center" colspan="11" height="20"><span
									class="left_bt2">菜单信息列表</span></td>
							</tr>
							<tr>
								<td class="line_table" align="center"><span
									class="left_bt2">菜单名称</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">展示图片</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">原料</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">类型</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">说明</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">市场价格</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">市场价销售数量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">会员单价</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">会员价销售数量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">&nbsp;</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">&nbsp;</span></td>
							</tr>
						
							<%
								int currentpage=1;
								String str=(String)request.getParameter("currentpage");
								if(str!=null&&str!=""){
									currentpage=Integer.parseInt(str);
								}
							    MenusDao md=new MenusDao();
							    List<Menus> list=md.pageList(currentpage,5);
							    for(int i=0;i<list.size();i++){
									Menus menus=list.get(i); 	
							%>
							<tr>
								<td class="line_table" align="center"><a
									href="menus_update.jsp?id=<%=menus.getId()%>"><%=menus.getName()%></a></td>
								<td class="line_table" align="center"><a
									href="../<%=menus.getImgpath()%>"><img src="../<%=menus.getImgpath()%>"
										width="30" heigth="30"></a></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=menus.getBurden()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=menus.getTypename()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=menus.getBrief()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=menus.getPrice()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=menus.getSums()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=menus.getPrice1()%></span></td>
								<td class="line_table" align="center"><span
									class="left_txt"><%=menus.getSums1()%></span></td>
								<td class="line_table" align="center"><a
									href="menus_update.jsp?id=<%=menus.getId()%>">修改</a></td>
								<td class="line_table" align="center"><a
									href="../MenuDelServlet?id=<%=menus.getId()%>">删除</a></td>
							</tr>
							<%
								}
							%>
							<tr>
								<td class="line_table" align="center" colspan="11" height="20">
								<span class="left_bt2">第<%=md.getCurrentpage()%>页
										&nbsp;&nbsp;共<%=md.getTotalpage()%>页
								</span>&nbsp;&nbsp; 
								    <a href="?currentpage=0">[首页]</a>
								    <a href="?currentpage=<%=md.getTotalpage()%>">[尾页]</a>&nbsp;&nbsp; 
								    <a href="?currentpage=<%=md.getCurrentpage()-1%>">[上一页]</a>
									<a href="?currentpage=<%=md.getCurrentpage()+1%>">[下一页]</a>
									
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
