<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
<title>网上订餐管理员登陆</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}
-->
</style> 

<script language="JavaScript">
	function login11() {

		if (document.form1.name.value == "") {
			alert("请输入用户名!");
			document.form1.name.focus();
			return false;
		}
		if (document.form1.pwd.value == "") {
			alert("请输入密码!");
			document.form1.pwd.focus();
			return false;
		}
	}
</script>

<link href="${pageContext.request.contextPath}/public/admin/css/login.css" rel="stylesheet" type="text/css">
</head>

<body>

	<table width="100%" height="166" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="42" valign="top"><table width="100%" height="42"
					border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
					<tr>
						<td width="100%" height="21">&nbsp;</td>
						
					</tr>
				</table></td>
		</tr>
		<tr>
			<td valign="top"><table width="100%" height="532" border="0"
					cellpadding="0" cellspacing="0" class="login_bg">
					<tr>
						<td width="49%" align="right"><table width="91%" height="532"
								border="0" cellpadding="0" cellspacing="0" class="login_bg2">
								<tr>
									<td height="138" valign="top"><table width="89%"
											height="427" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td height="149">&nbsp;</td>
											</tr>
											<tr>
												<td height="80" align="right" valign="top"><img
                                                        src="${pageContext.request.contextPath}/public/admin/images/logo.png" width="279" height="68"></td>
											</tr>
											<tr>
												<td height="198" align="right" valign="top"><table
														width="100%" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td width="35%">&nbsp;</td>
															<td height="25" colspan="2" class="left_txt"
																align="center"><p>
																	<img src="${pageContext.request.contextPath}/public/admin/images/icon-mail2.gif" width="16" height="11">
																	客户服务邮箱：admin@apsfc.com
																</p></td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td height="25" colspan="2" class="left_txt"
																align="center"><p>
																	<img src="${pageContext.request.contextPath}/public/admin/images/icon-phone.gif" width="17" height="14">
																	官方网站：http://www.apsfc.com
																</p></td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td height="25" colspan="2" class="left_txt"></td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td width="30%" height="40"><img
                                                                    src="${pageContext.request.contextPath}/public/admin//images/icon-demo.gif" width="16" height="16">
																使用说明</td>
															<td width="35%"><img
                                                                    src="${pageContext.request.contextPath}/public/admin//images/icon-login-seaver.gif" width="16"
                                                                    height="16"> 在线客服</td>
														</tr>
													</table></td>
											</tr>
										</table></td>
								</tr>

							</table></td>
						<td width="1%">&nbsp;</td>
						<td width="50%" valign="bottom"><table width="100%"
								height="59" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="4%">&nbsp;</td>
									<td width="96%" height="38"><span class="login_txt_bt">登陆网上订餐后台管理</span></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td height="21"><table cellSpacing="0" cellPadding="0"
											width="100%" border="0" id="table211" height="328">
											<tr>
												<td height="164" colspan="2" align="middle">

													<form name="form1" action="/admin/login"
														method="post" onSubmit="return login11()">
														<table cellSpacing="0" cellPadding="0" width="100%"
															border="0" height="143" id="table212">
															<tr>
																<td width="13%" height="38" class="top_hui_text"><span
																	class="login_txt">管理员：&nbsp;&nbsp; </span></td>
																<td height="38" colspan="2" class="top_hui_text"><input
																	name="name" class="name" value="" size="20"></td>
															</tr>
															<tr>
																<td width="13%" height="35" class="top_hui_text"><span
																	class="login_txt"> 密 码： &nbsp;&nbsp; </span></td>
																<td height="35" colspan="2" class="top_hui_text"><input
																	class="pwd" type="password" size="20" name="pwd">
																	<img src="${pageContext.request.contextPath}/public/admin//images/luck.gif" width="19" height="18">
																</td>
															</tr>
															<tr>
																<td width="13%" height="35">&nbsp;</td>
																<td height="35" colspan="2" class="top_hui_text"><input
																	class=AutoLogin name=AutoLogin type=checkbox value="Y"
																	maxLength=4 size=10 id="AutoLogin"> <span
																	class="login_txt"> 5天内自动登录</span></td>
															</tr>
															<tr>
																<td height="35">&nbsp;</td>
																<td width="20%" height="35"><input name="Submit"
																	type="submit" class="button" id="Submit" value="登 陆">
																</td>
																<td width="67%" class="top_hui_text"><input
																	name="cs" type="button" class="button" id="cs"
																	value="取 消" onClick="showConfirmMsg1()"></td>
															</tr>
														</table>
														<br>
													</form>

												</td>
											</tr>
											<tr>
												<td width="433" height="164" align="right" valign="bottom"><img
                                                        src="${pageContext.request.contextPath}/public/admin/images/login-wel.gif" width="242" height="138"></td>
												<td width="57" align="right" valign="bottom">&nbsp;</td>
											</tr>
										</table></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="20"><table width="100%" border="0" cellspacing="0"
					cellpadding="0" class="login-buttom-bg">
					<tr>
						<td align="center"><span class="login-buttom-txt">Copyright
								&copy; 2015-2020</span></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>
