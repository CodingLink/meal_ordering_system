<%@page import="com.example.meal_ordering_system.entity.Types"%>
<%@ page import="com.example.meal_ordering_system.dao.TypesDao" %>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<head>
<link href="css/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="JavaScript">
	function check11() {

		if (document.form1.name.value == "") {
			alert("��Ʒ���Ʋ���Ϊ��!");
			document.form1.name.focus();
			return false;
		}
		if (document.form1.author.value == "") {
			alert("ԭ�ϲ���Ϊ��!");
			document.form1.author.focus();
			return false;
		}
		if (document.form1.price.value == "") {
			alert("�г��۸���Ϊ��!");
			document.form1.price1.focus();
			return false;
		}
		if (document.form1.price1.value == "") {
			alert("��Ա�۸���Ϊ��!");
			document.form1.price1.focus();
			return false;
		}
		if (document.form1.brief.value == "") {
			alert("˵������Ϊ��!");
			document.form1.brief.focus();
			return false;
		}

		if (document.form1.img.value == "") {
			alert("�ϴ�ͼƬ����Ϊ��!");
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
			<td width="17" valign="top" background="images/mail_leftbg.gif"><img
                    src="images/left-top-right.gif" width="17" height="29" /></td>
			<td valign="top" background="images/content-bg.gif"><table
					width="100%" height="31" border="0" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31"><div class="titlebt">��Ӳ�Ʒ</div></td>
					</tr>
				</table></td>
			<td width="16" valign="top" background="images/mail_rightbg.gif"><img
                    src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9">

				<p>&nbsp;</p>

				<div align="center">

					<form action="../MenuAddServlet" method="post" name="form1"
						onSubmit="return check11()" enctype="multipart/form-data">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">��Ʒ���ƣ�</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="name" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">ԭ&nbsp;&nbsp;&nbsp; �ϣ�</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="burden" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">�г��۸�</span></td>
								<td height="25" width="80%"><input type="text" name="price"
									size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">��Ա�۸�</span></td>
								<td height="25" width="80%"><input type="text"
									name="price1" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">˵&nbsp;&nbsp;&nbsp; ����</span></td>
								<td class="line_table" height="25" width="80%"><textarea
										rows="12" name="brief" cols="100"></textarea></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">��Ʒ���</span></td>
								<td class="line_table" height="25" width="80%"><select
									name="typeid">

										<%
											TypesDao tdao = new TypesDao();
											List<Types> typelist = tdao.select();
											for (int i = 0; i < typelist.size(); i++) {
												Types type = new Types();
												type = typelist.get(i);
										%>
										<option value="<%=type.getId()%>"><%=type.getName()%></option>
										<%
											}
										%>
								</select></td>
							</tr>

							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">�ϴ�ͼƬ��</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="file" name="img" size="50"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="center" colspan="2"><input
									type="submit" value="���"></td>
							</tr>
						</table>
					</form>
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
