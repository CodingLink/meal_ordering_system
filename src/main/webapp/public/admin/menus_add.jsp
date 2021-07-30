<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.example.meal_ordering_system.entity.Types"%>
<%@ page import="com.example.meal_ordering_system.dao.TypesDao" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.example.meal_ordering_system.service.TypesService" %>
<%@ page import="com.example.meal_ordering_system.service.impl.TypesServiceImpl" %>
<%@ page import="com.example.meal_ordering_system.controller.TypesController" %>
<html>
<head>
<link href="../public/admin/css/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="JavaScript">
	function check11() {

		if (document.form1.name.value == "") {
			alert("菜品名称不能为空!");
			document.form1.name.focus();
			return false;
		}
		if (document.form1.burden.value == "") {
			alert("原料不能为空!");
			document.form1.author.focus();
			return false;
		}
		if (document.form1.price.value == "") {
			alert("市场价格不能为空!");
			document.form1.price1.focus();
			return false;
		}
		if (document.form1.price1.value == "") {
			alert("会员价格不能为空!");
			document.form1.price1.focus();
			return false;
		}
		if (document.form1.brief.value == "") {
			alert("说明不能为空!");
			document.form1.brief.focus();
			return false;
		}

		if (document.form1.img.value == "") {
			alert("上传图片不能为空!");
			document.form1.img.focus();
			return false;
		}
	}
</script>
</head>
<body class="body">

	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="17" valign="top" background="../public/admin/images/mail_leftbg.gif"><img
					src="../public/admin/images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top" background="../public/admin/images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt">添加菜品</div></td>
					</tr>
				</table></td>
			<td width="16" valign="top" background="../public/admin/images/mail_rightbg.gif"><img
					src="../public/admin/images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle" background="../public/admin/images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9">

				<p>&nbsp;</p>

				<div align="center">

					<form action="/menus/insert" method="post" name="form1"
						onSubmit="return check11()" enctype="multipart/form-data">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">菜品名称：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="name" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">原&nbsp;&nbsp;&nbsp; 料：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="burden" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">市场价格：</span></td>
								<td height="25" width="80%"><input type="text" name="price"
									size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">会员价格：</span></td>
								<td height="25" width="80%"><input type="text"
									name="price1" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">说&nbsp;&nbsp;&nbsp; 明：</span></td>
								<td class="line_table" height="25" width="80%"><textarea
										rows="12" name="brief" cols="100"></textarea></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">菜品类别：</span></td>
								<td class="line_table" height="25" width="80%">
									<select name="typeid">
										<c:forEach items="${typesList}" var="t">
											<option value="${t.id}">${t.name}</option>
										</c:forEach>
								</select></td>
							</tr>

							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">上传图片：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="file" name="img" size="50"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="center" colspan="2"><input
									type="submit" value="添加"></td>
							</tr>
						</table>
					</form>
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
