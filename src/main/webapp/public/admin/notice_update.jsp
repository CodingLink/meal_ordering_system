<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<html>
<head>
<script language="JavaScript">
	function check11() {

		if (document.form1.name.value == "") {
			alert("请输入标题!");
			document.form1.name.focus();
			return false;
		}
		if (document.form1.content.value == "") {
			alert("请输入内容!");
			document.form1.content.focus();
			return false;
		}
	}
</script>

<link href="../public/admin/css/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

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
						<td height="31"><div class="titlebt">添加公告</div></td>
					</tr>
				</table></td>
			<td width="16" valign="top" background="../public/admin/images/mail_rightbg.gif"><img
                    src="images/nav-right-bg.gif" width="16" height="29" /></td>
		</tr>
		<tr>
			<td valign="middle" background="../public/admin/images/mail_leftbg.gif">&nbsp;</td>
			<td valign="top" bgcolor="#F7F8F9">
				<p>&nbsp;</p>

				<div align="center">

					<form action="<c:url value="/notice/update"/>" method="post"
						name="form1" onSubmit="return check11()">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">公告标题：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="name" size="45" value="${notice.name}"></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">发布时间：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="times" size="45" value="${notice.times}" readonly="readonly"></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">公告内容：</span></td>
								<td class="line_table" width="90%"><textarea rows="14"
										name="content" cols="105">${notice.content}</textarea>
										<input type="hidden" name="id" value="${notice.id}" />
										</td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="center" colspan="2">
									<input type="submit" value="修改">
								</td>
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
