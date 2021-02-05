<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.apsfc.po.*"%>
<%@page import="com.apsfc.dao.*"%>
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
									<span class="left_bt2">类别信息列表</span>
								</td>
							</tr>
							<tr>
								<td class="line_table" align="center" width="30%"><span
									class="left_bt2">类别ID</span></td>
								<td class="line_table" align="center" width="30%"><span
									class="left_bt2">类别名称</span></td>
								<td class="line_table" align="center" width="20%"></td>
								<td class="line_table" align="center" width="20%"></td>
							</tr>

							<%
								
							TypeDao tdao=new TypeDao();
						    List<Type> typelist=tdao.select();
						    for(int i=0;i<typelist.size();i++){
						    	Type type=new Type();
						    	type=typelist.get(i);
							%>
							<tr>
								<td class="line_table" align="center" width="30%"><span
									class="left_txt"><%=type.getId()%></span></td>
								<td class="line_table" align="center" width="30%"><span
									class="left_txt"><%=type.getName()%></span></td>
								<td class="line_table" align="center" width="20%"><a
                                        href="type_update.jsp?id=<%=type.getId()%>" target="main">修改</a></td>
								<td class="line_table" align="center" width="20%"><a
									href="../servlet/TypeDelServlet?id=<%=type.getId()%>" target="main">删除</a></td>
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
