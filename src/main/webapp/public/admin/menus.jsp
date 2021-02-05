<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.example.meal_ordering_system.entity.Menus"%>
<%@page import="com.example.meal_ordering_system.dao.MenusDao"%>
<%@page import="java.util.*"%>
<%@ page import="com.example.meal_ordering_system.service.MenusService" %>
<%@ page import="com.example.meal_ordering_system.service.impl.MenusServiceImpl" %>
<%@ page language="java"  pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../public/admin/css/skin.css" rel="stylesheet" type="text/css" />
</head>
<body class="body">
	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="17" valign="top" background="../public/admin/images/mail_leftbg.gif"><img
                    src="../public/admin/images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top" background="../public/admin/images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table_2">
					<tr>
						<td height="31"><div class="titlebt">菜单信息</div></td>
					</tr>
				</table></td>
			<td width="16" valign="top" background="../public/admin/images/mail_rightbg.gif"><img
                    src="../public/admin/images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle" background="../public/admin/images/mail_leftbg.gif">&nbsp;</td>
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
						
<%--							<%--%>
<%--								int currentpage=1;--%>
<%--								String str=(String)request.getParameter("currentpage");--%>
<%--								if(str!=null&&str!=""){--%>
<%--									currentpage=Integer.parseInt(str);--%>
<%--								}--%>
<%--							    MenusService ms=new MenusServiceImpl();--%>
<%--							    List<Menus> list=ms.queryAllByLimit(currentpage,5);--%>
<%--							    for(int i=0;i<list.size();i++){--%>
<%--									Menus menus=list.get(i);--%>
<%--							%>--%>
							<c:forEach items="${list}" var="l" varStatus="loop">
							<tr>
								<td class="line_table" align="center"><a
									href="menus_update.jsp?id=${l.id}}">${l.name}</a></td>
								<td class="line_table" align="center"><a
									href="../public/${l.imgpath}"><img src="../public/${l.imgpath}"
										width="30" heigth="30"></a></td>
								<td class="line_table" align="center"><span
									class="left_txt">${l.burden}</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${typesList[loop.count-1].name}</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${l.brief}</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${l.price}</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${l.sums}</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${l.price1}</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${l.sums1}</span></td>
								<td class="line_table" align="center"><a
									href="/menus/toUpdatePage?id=${l.id}">修改</a></td>
								<td class="line_table" align="center"><a
									href="/menus/delete?id=${l.id}">删除</a></td>
							</tr>
							</c:forEach>
<%--							<tr>--%>
<%--								<td class="line_table" align="center" colspan="11" height="20">--%>
<%--								<span class="left_bt2">第<%=ms.getCurrentpage()%>页--%>
<%--										&nbsp;&nbsp;共<%=ms.getTotalpage()%>页--%>
<%--								</span>&nbsp;&nbsp; --%>
<%--								    <a href="?currentpage=0">[首页]</a>--%>
<%--								    <a href="?currentpage=<%=ms.getTotalpage()%>">[尾页]</a>&nbsp;&nbsp; --%>
<%--								    <a href="?currentpage=<%=ms.getCurrentpage()-1%>">[上一页]</a>--%>
<%--									<a href="?currentpage=<%=ms.getCurrentpage()+1%>">[下一页]</a>--%>
<%--									--%>
<%--								</td>--%>
<%--							</tr>--%>
					</table>
				</div>
			</td>
			<td background="../public/admin/images/mail_rightbg.gif">&nbsp;</td>
		</tr>
		<tr>
			<td valign="bottom" background="../public/admin/images/mail_leftbg.gif"><img
                    src="../public/admin/images/buttom_left2.gif" width="17" height="17" /></td>
			<td background="../public/admin/images/buttom_bgs.gif"><img
                    src="../public/admin/images/buttom_bgs.gif" width="17" height="17"></td>
			<td valign="bottom" background="../public/admin/images/mail_rightbg.gif"><img
                    src="../public/admin/images/buttom_right2.gif" width="16" height="17" /></td>
		</tr>
	</table>
</body>
</html>
